
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int DELAY (int) ;
 int getit () ;
 scalar_t__ i8254_freq ;
 int i8254_max_count ;
 int inb (int) ;
 scalar_t__ kdb_active ;
 int printf (char*,int,...) ;

void
i8254_delay(int n)
{
 int delta, prev_tick, tick, ticks_left;
  prev_tick = getit();
 n -= 0;




 if (n <= 0)
  ticks_left = 0;
 else if (n < 256)






  ticks_left = ((u_int)n * 39099 + (1 << 15) - 1) >> 15;
 else






  ticks_left = ((u_int)n * (long long)i8254_freq + 999999)
        / 1000000;

 while (ticks_left > 0) {
   tick = getit();



  delta = prev_tick - tick;
  prev_tick = tick;
  if (delta < 0) {
   delta += i8254_max_count;






   if (delta < 0)
    delta = 0;
  }
  ticks_left -= delta;
 }





}
