FROM node:20-alpine

WORKDIR /usr/server

COPY ./ .

ENV NODE_ENV=production

RUN corepack enable && yarn -v && yarn install && yarn build

CMD ["yarn", "start"]
