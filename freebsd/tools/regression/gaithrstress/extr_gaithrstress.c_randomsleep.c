
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {double tv_nsec; int tv_sec; int member_1; int member_0; } ;


 scalar_t__ my_arc4random_r () ;
 int nanosleep (struct timespec*,int *) ;

__attribute__((used)) static void
randomsleep(double max_sleep_sec)
{
 struct timespec slptime = { 0, 0 };
 double rndsleep;

 rndsleep = (double)my_arc4random_r() / 4294967296.0 * max_sleep_sec;
 while (rndsleep >= 1.0) {
  slptime.tv_sec++;
  rndsleep -= 1.0;
 }
 slptime.tv_nsec = rndsleep * 1e9;
 (void)nanosleep(&slptime, ((void*)0));
}
