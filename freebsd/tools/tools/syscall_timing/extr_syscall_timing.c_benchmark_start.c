
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLOCK_REALTIME ;
 int SIGALRM ;
 int alarm (scalar_t__) ;
 scalar_t__ alarm_fired ;
 int alarm_handler ;
 scalar_t__ alarm_timeout ;
 int assert (int) ;
 int clock_gettime (int ,int *) ;
 int signal (int ,int ) ;
 int ts_start ;

__attribute__((used)) static void
benchmark_start(void)
{
 int error;

 alarm_fired = 0;
 if (alarm_timeout) {
  signal(SIGALRM, alarm_handler);
  alarm(alarm_timeout);
 }
 error = clock_gettime(CLOCK_REALTIME, &ts_start);
 assert(error == 0);
}
