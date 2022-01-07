
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u_long ;


 long randseed ;

u_long
random()
{
 long x, hi, lo, t;
 if ((x = randseed) == 0)
  x = 123459876;
 hi = x / 127773;
 lo = x % 127773;
 t = 16807 * lo - 2836 * hi;
 if (t < 0)
  t += 0x7fffffff;
 randseed = t;
 return (t);
}
