
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
bcd2int(int bcd)
{
 int retval = 0;
 int place = 1;

 if (bcd > 0x9999)
  return -1;

 while (bcd) {
  retval += (bcd & 0xf) * place;
  bcd >>= 4;
  place *= 10;
 }
 return retval;
}
