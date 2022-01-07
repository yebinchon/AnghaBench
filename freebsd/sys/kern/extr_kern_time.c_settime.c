
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct timespec {int tv_sec; int tv_nsec; } ;
struct thread {int td_ucred; } ;


 int EPERM ;
 int microtime (struct timeval*) ;
 int printf (char*) ;
 int resettodr () ;
 scalar_t__ securelevel_gt (int ,int) ;
 int tc_setclock (struct timespec*) ;
 int timevalsub (struct timeval*,struct timeval*) ;

__attribute__((used)) static int
settime(struct thread *td, struct timeval *tv)
{
 struct timeval delta, tv1, tv2;
 static struct timeval maxtime, laststep;
 struct timespec ts;

 microtime(&tv1);
 delta = *tv;
 timevalsub(&delta, &tv1);
 if (securelevel_gt(td->td_ucred, 1) != 0) {
  if (delta.tv_sec < 0 || delta.tv_usec < 0) {



   if (tv1.tv_sec > maxtime.tv_sec)
    maxtime = tv1;
   tv2 = *tv;
   timevalsub(&tv2, &maxtime);
   if (tv2.tv_sec < -1) {
    tv->tv_sec = maxtime.tv_sec - 1;
    printf("Time adjustment clamped to -1 second\n");
   }
  } else {
   if (tv1.tv_sec == laststep.tv_sec)
    return (EPERM);
   if (delta.tv_sec > 1) {
    tv->tv_sec = tv1.tv_sec + 1;
    printf("Time adjustment clamped to +1 second\n");
   }
   laststep = *tv;
  }
 }

 ts.tv_sec = tv->tv_sec;
 ts.tv_nsec = tv->tv_usec * 1000;
 tc_setclock(&ts);
 resettodr();
 return (0);
}
