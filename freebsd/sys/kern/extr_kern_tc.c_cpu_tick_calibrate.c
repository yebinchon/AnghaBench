
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct bintime {scalar_t__ sec; int frac; } ;


 int bintime_sub (struct bintime*,struct bintime*) ;
 scalar_t__ bootverbose ;
 int cpu_tick_frequency ;
 int cpu_tick_variable ;
 int cpu_ticks () ;
 int getbinuptime (struct bintime*) ;
 int printf (char*,int) ;

__attribute__((used)) static void
cpu_tick_calibrate(int reset)
{
 static uint64_t c_last;
 uint64_t c_this, c_delta;
 static struct bintime t_last;
 struct bintime t_this, t_delta;
 uint32_t divi;

 if (reset) {

  t_last.sec = 0;
  return;
 }


 if (!cpu_tick_variable)
  return;

 getbinuptime(&t_this);
 c_this = cpu_ticks();
 if (t_last.sec != 0) {
  c_delta = c_this - c_last;
  t_delta = t_this;
  bintime_sub(&t_delta, &t_last);







  divi = t_delta.sec << 20;
  divi |= t_delta.frac >> (64 - 20);
  c_delta <<= 20;
  c_delta /= divi;
  if (c_delta > cpu_tick_frequency) {
   if (0 && bootverbose)
    printf("cpu_tick increased to %ju Hz\n",
        c_delta);
   cpu_tick_frequency = c_delta;
  }
 }
 c_last = c_this;
 t_last = t_this;
}
