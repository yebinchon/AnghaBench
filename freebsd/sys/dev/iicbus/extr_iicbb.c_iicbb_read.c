
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 scalar_t__ iicbb_readbyte (int ,int,int) ;

__attribute__((used)) static int
iicbb_read(device_t dev, char * buf, int len, int *read, int last, int delay)
{
 int bytes;

 bytes = 0;
 while (len) {

  *buf++ = (char)iicbb_readbyte(dev, (len == 1) ? last : 0, delay);

  bytes ++;
  len --;
 }

 *read = bytes;
 return (0);
}
