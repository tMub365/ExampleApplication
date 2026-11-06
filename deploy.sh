#!/usr/bin/env bash
sudo apt-get update && sudo apt-get install -y nodejs npm
sudo npm install -g pm2

cd "$HOME/ExampleApplication"
npm install

pm2 restart example_app || pm2 start ./bin/www --name example_app
