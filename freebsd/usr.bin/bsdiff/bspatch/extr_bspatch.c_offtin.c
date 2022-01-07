
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int off_t ;



__attribute__((used)) static off_t offtin(u_char *buf)
{
 off_t y;

 y = buf[7] & 0x7F;
 y = y * 256; y += buf[6];
 y = y * 256; y += buf[5];
 y = y * 256; y += buf[4];
 y = y * 256; y += buf[3];
 y = y * 256; y += buf[2];
 y = y * 256; y += buf[1];
 y = y * 256; y += buf[0];

 if (buf[7] & 0x80)
  y = -y;

 return (y);
}
