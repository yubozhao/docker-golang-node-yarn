FROM golang:1.6
MAINTAINER Bozhao Yu "yubz86@gmail.com"


# build bundle.js
RUN curl -sL https://deb.nodesource.com/setup_4.x | bash - &&  \
apt-get install -y nodejs && \
 npm update -g npm && \
 npm install webpack -g && \
 npm config set registry http://registry.npmjs.org/

# Install Yarn (facebook)
apt-key adv --fetch-keys http://dl.yarnpkg.com/debian/pubkey.gpg
apt-get update && sudo apt-get install yarn
