
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;


 int CLOCK_UPTIME_FAST ;
 int clock_gettime (int ,struct timespec*) ;
 int do_timedog ;
 int warn (char*) ;

__attribute__((used)) static int
watchdog_getuptime(struct timespec *tp)
{
 int error;

 if (!do_timedog)
  return 0;

 error = clock_gettime(CLOCK_UPTIME_FAST, tp);
 if (error)
  warn("clock_gettime");
 return (error);
}
