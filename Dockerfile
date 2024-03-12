FROM node:19
WORKDIR /todos-edge/
COPY package*.json /todos-edge/
RUN npm ci
COPY . .
RUN npm run build
ENV HOST 0.0.0.0
ENV PORT 9000
EXPOSE 9000
ENTRYPOINT ["node", ".output/server/index.mjs"]