
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct timespec {int dummy; } ;


 int LOG_CRIT ;
 int TIMESPEC_TO_TIMEVAL (struct timeval*,struct timespec*) ;
 int carp_thresh_seconds ;
 scalar_t__ do_syslog ;
 int do_timedog ;
 int syslog (int ,char*,char const*,char const*,int,long,int) ;
 char* test_cmd ;
 int timersub (struct timeval*,struct timeval*,struct timeval*) ;
 int warnx (char*,char const*,char const*,int,long,int) ;
 scalar_t__ watchdog_getuptime (struct timespec*) ;

__attribute__((used)) static long
watchdog_check_dogfunction_time(struct timespec *tp_start,
    struct timespec *tp_end)
{
 struct timeval tv_start, tv_end, tv_now, tv;
 const char *cmd_prefix, *cmd;
 struct timespec tp_now;
 int sec;

 if (!do_timedog)
  return (0);

 TIMESPEC_TO_TIMEVAL(&tv_start, tp_start);
 TIMESPEC_TO_TIMEVAL(&tv_end, tp_end);
 timersub(&tv_end, &tv_start, &tv);
 sec = tv.tv_sec;
 if (sec < carp_thresh_seconds)
  return (sec);

 if (test_cmd) {
  cmd_prefix = "Watchdog program";
  cmd = test_cmd;
 } else {
  cmd_prefix = "Watchdog operation";
  cmd = "stat(\"/etc\", &sb)";
 }
 if (do_syslog)
  syslog(LOG_CRIT, "%s: '%s' took too long: "
      "%d.%06ld seconds >= %d seconds threshold",
      cmd_prefix, cmd, sec, (long)tv.tv_usec,
      carp_thresh_seconds);
 else
  warnx("%s: '%s' took too long: "
      "%d.%06ld seconds >= %d seconds threshold",
      cmd_prefix, cmd, sec, (long)tv.tv_usec,
      carp_thresh_seconds);





 if (watchdog_getuptime(&tp_now))
  return (sec);
 TIMESPEC_TO_TIMEVAL(&tv_now, &tp_now);
 timersub(&tv_now, &tv_start, &tv);
 sec = tv.tv_sec;

 return (sec);
}
