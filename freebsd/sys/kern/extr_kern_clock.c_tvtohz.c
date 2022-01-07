
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {long tv_sec; long tv_usec; } ;


 unsigned long INT_MAX ;
 int LONG_MAX ;
 long howmany (unsigned long,int ) ;
 int hz ;
 int printf (char*,long,long) ;
 int tick ;

int
tvtohz(struct timeval *tv)
{
 unsigned long ticks;
 long sec, usec;
 sec = tv->tv_sec;
 usec = tv->tv_usec;
 if (usec < 0) {
  sec--;
  usec += 1000000;
 }
 if (sec < 0) {
  ticks = 1;
 } else if (sec <= LONG_MAX / 1000000)
  ticks = howmany(sec * 1000000 + (unsigned long)usec, tick) + 1;
 else if (sec <= LONG_MAX / hz)
  ticks = sec * hz
   + howmany((unsigned long)usec, tick) + 1;
 else
  ticks = LONG_MAX;
 if (ticks > INT_MAX)
  ticks = INT_MAX;
 return ((int)ticks);
}
