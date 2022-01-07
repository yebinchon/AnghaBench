
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {long tv_sec; long tv_usec; } ;
typedef int hz ;


 unsigned long INT_MAX ;
 int LONG_MAX ;
 int err (int,char*) ;
 int printf (char*,long,long) ;
 int sysctlbyname (char*,int*,size_t*,int *,int ) ;

int
tvtohz(struct timeval *tv)
{
 register unsigned long ticks;
 register long sec, usec;
 int hz;
 size_t hzsize;
 int error;
 int tick;

 hzsize = sizeof(hz);

 error = sysctlbyname("kern.hz", &hz, &hzsize, ((void*)0), 0);
 if (error)
  err(1, "sysctlbyname kern.hz");

 tick = 1000000 / hz;
 sec = tv->tv_sec;
 usec = tv->tv_usec;
 if (usec < 0) {
  sec--;
  usec += 1000000;
 }
 if (sec < 0) {
  ticks = 1;
 } else if (sec <= LONG_MAX / 1000000)
  ticks = (sec * 1000000 + (unsigned long)usec + (tick - 1))
      / tick + 1;
 else if (sec <= LONG_MAX / hz)
  ticks = sec * hz
      + ((unsigned long)usec + (tick - 1)) / tick + 1;
 else
  ticks = LONG_MAX;
 if (ticks > INT_MAX)
  ticks = INT_MAX;
 return ((int)ticks);
}
