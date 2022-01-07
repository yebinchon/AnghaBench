
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned char
mii_bitreverse(unsigned char x)
{
 static unsigned const char nibbletab[16] = {
  0, 8, 4, 12, 2, 10, 6, 14, 1, 9, 5, 13, 3, 11, 7, 15
 };

 return ((nibbletab[x & 15] << 4) | nibbletab[x >> 4]);
}
