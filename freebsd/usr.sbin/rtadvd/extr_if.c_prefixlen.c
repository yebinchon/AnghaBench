
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
prefixlen(unsigned char *p, unsigned char *lim)
{
 int masklen;

 for (masklen = 0; p < lim; p++) {
  switch (*p) {
  case 0xff:
   masklen += 8;
   break;
  case 0xfe:
   masklen += 7;
   break;
  case 0xfc:
   masklen += 6;
   break;
  case 0xf8:
   masklen += 5;
   break;
  case 0xf0:
   masklen += 4;
   break;
  case 0xe0:
   masklen += 3;
   break;
  case 0xc0:
   masklen += 2;
   break;
  case 0x80:
   masklen += 1;
   break;
  case 0x00:
   break;
  default:
   return (-1);
  }
 }

 return (masklen);
}
