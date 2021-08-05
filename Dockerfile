FROM node:latest

WORKDIR /app

COPY package*.json /app

RUN npm install

# RUN npm ci --only=production

COPY . /app

EXPOSE 8080 

CMD ["npm", "start"]
