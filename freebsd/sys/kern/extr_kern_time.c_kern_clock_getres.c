
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_sec; int tv_nsec; } ;
struct thread {int dummy; } ;
typedef int clockid_t ;
 int EINVAL ;
 int cpu_tickrate () ;
 int howmany (int,int ) ;
 int hz ;
 int tc_getfrequency () ;

int
kern_clock_getres(struct thread *td, clockid_t clock_id, struct timespec *ts)
{

 ts->tv_sec = 0;
 switch (clock_id) {
 case 136:
 case 135:
 case 134:
 case 141:
 case 140:
 case 139:
 case 131:
 case 130:
 case 129:





  ts->tv_nsec = 1000000000 / tc_getfrequency() + 1;
  break;
 case 128:
 case 137:

  ts->tv_nsec = howmany(1000000000, hz);
  break;
 case 133:
  ts->tv_sec = 1;
  ts->tv_nsec = 0;
  break;
 case 132:
 case 138:
 cputime:

  ts->tv_nsec = 1000000 / cpu_tickrate();
  if (ts->tv_nsec == 0)
   ts->tv_nsec = 1000;
  break;
 default:
  if ((int)clock_id < 0)
   goto cputime;
  return (EINVAL);
 }
 return (0);
}
