
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int TSENTER () ;
 int TSEXIT () ;
 int cycles_per_usec ;
 int mips_rd_count () ;

void
DELAY(int n)
{
 uint32_t cur, last, delta, usecs;

 TSENTER();




 last = mips_rd_count();
 delta = usecs = 0;

 while (n > usecs) {
  cur = mips_rd_count();


  if (cur < last)
   delta += cur + (0xffffffff - last) + 1;
  else
   delta += cur - last;

  last = cur;

  if (delta >= cycles_per_usec) {
   usecs += delta / cycles_per_usec;
   delta %= cycles_per_usec;
  }
 }
 TSEXIT();
}
