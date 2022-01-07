
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ bit ;


 scalar_t__ MSB_SET (unsigned long) ;

unsigned long
_divulong (unsigned long a, unsigned long b)
{
  unsigned long reste = 0L;
  unsigned char count = 32;



    bit c;


  do
  {

    c = MSB_SET(a);
    a <<= 1;
    reste <<= 1;
    if (c)
      reste |= 1L;

    if (reste >= b)
    {
      reste -= b;

      a |= 1L;
    }
  }
  while (--count);
  return a;
}
