
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



uint8_t
winChksum(uint8_t *name)
{
 int i;
 uint8_t s;

 for (s = 0, i = 11; --i >= 0; s += *name++)
  s = (s << 7) | (s >> 1);
 return s;
}
