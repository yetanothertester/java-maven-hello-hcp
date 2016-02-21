#!/bin/bash  
APP_NAME=$1
ls -lahR .
NEO=./target/sdk/tools/neo.sh
pwd
echo Deploying "$APP_NAME"
$NEO deploy -a "$ACCOUNT" \
    -b "$APP_NAME" \
    -h "$LANDSCAPE_HOST" \
    -u "$DEPLOY_USERNAME" \
    -p "$DEPLOY_PASSWORD" \
    -s ./target/hello-world.war
    
echo "Restarting app...";

$NEO restart -a "$ACCOUNT" \
    -b "$APP_NAME" \
    -h "$LANDSCAPE_HOST" \
    -u "$DEPLOY_USERNAME" \
    -p "$DEPLOY_PASSWORD"
echo "DEPLOYMENT FINISHED"
