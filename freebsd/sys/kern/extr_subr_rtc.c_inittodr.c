
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct timespec {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;




 int ffclock_reset_clock (struct timespec*) ;
 int printf (char*,...) ;
 int read_clocks (struct timespec*,int) ;
 int tc_setclock (struct timespec*) ;

void
inittodr(time_t base)
{
 struct timespec ts;
 int error;

 error = read_clocks(&ts, 0);






 if (error != 0) {
  switch (error) {
  case 128:
   printf("Warning: no time-of-day clock registered, ");
   break;
  case 129:
   printf("Warning: bad time from time-of-day clock, ");
   break;
  default:
   printf("Error reading time-of-day clock (%d), ", error);
   break;
  }
  printf("system time will not be set accurately\n");
  ts.tv_sec = (base > 0) ? base : -1;
  ts.tv_nsec = 0;
 }

 if (ts.tv_sec >= 0) {
  tc_setclock(&ts);



 }
}
