
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



__attribute__((used)) static void
ucs2pad(uint16_t *buf, int len, int size)
{

 if (len < size-1)
  buf[len++] = 0x0000;
 while (len < size)
  buf[len++] = 0xffff;
}
