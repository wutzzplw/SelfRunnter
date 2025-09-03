# ใช้ Node.js official image เป็น Base Image
FROM node:18-alpine

# กำหนด Working Directory ใน Container
WORKDIR /usr/src/app

# Copy ไฟล์ package.json และ package-lock.json
COPY package*.json ./

# ติดตั้ง Dependencies
RUN npm install

# Copy Source Code ทั้งหมดไปที่ Working Directory
COPY . .

# เปิด Port 3000
EXPOSE 3000

# คำสั่งสำหรับรันแอปพลิเคชัน
CMD [ "npm", "app.js" ]

#eshopweb-k8s:1.0
