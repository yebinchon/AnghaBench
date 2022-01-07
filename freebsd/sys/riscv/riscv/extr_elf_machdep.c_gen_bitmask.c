
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
typedef int mask ;



__attribute__((used)) static uint32_t
gen_bitmask(int msb, int lsb)
{
 uint32_t mask;

 if (msb == sizeof(mask) * 8 - 1)
  mask = ~0;
 else
  mask = (1U << (msb + 1)) - 1;

 if (lsb > 0)
  mask &= ~((1U << lsb) - 1);

 return (mask);
}
