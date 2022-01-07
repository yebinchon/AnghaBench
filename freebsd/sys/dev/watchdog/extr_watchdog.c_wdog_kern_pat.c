
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct timespec {int tv_sec; } ;


 int CLOCK_MONOTONIC_FAST ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int EVENTHANDLER_INVOKE (int ,int,int*) ;
 int MPASS (int) ;
 int WD_INTERVAL ;
 int WD_LASTVAL ;
 int WD_TO_NEVER ;
 int callout_reset (int *,int,int ,char*) ;
 int callout_stop (int *) ;
 int curthread ;
 int hz ;
 int kern_clock_gettime (int ,int ,struct timespec*) ;
 int pow2ns_to_ticks (int) ;
 int stub1 () ;
 int watchdog_list ;
 int wd_last_u ;
 int wd_last_u_sysctl ;
 int wd_last_u_sysctl_secs ;
 int wd_lastpat ;
 int wd_lastpat_valid ;
 int wd_pretimeout ;
 int wd_set_pretimeout (int ,int) ;
 int wd_softtimeo_handle ;
 scalar_t__ wd_softtimer ;
 int wd_timeout_cb ;
 int wdog_software_attach () ;

int
wdog_kern_pat(u_int utim)
{
 int error;
 static int first = 1;

 if ((utim & WD_LASTVAL) != 0 && (utim & WD_INTERVAL) > 0)
  return (EINVAL);

 if ((utim & WD_LASTVAL) != 0) {




  MPASS((wd_last_u & ~WD_INTERVAL) == 0);
  utim &= ~WD_LASTVAL;
  utim |= wd_last_u;
 } else {




  wd_last_u = (utim & WD_INTERVAL);
  wd_last_u_sysctl = wd_last_u;
  wd_last_u_sysctl_secs = pow2ns_to_ticks(wd_last_u) / hz;
 }
 if ((utim & WD_INTERVAL) == WD_TO_NEVER) {
  utim = 0;


  error = 0;
 } else {

  error = EOPNOTSUPP;
 }
 if (wd_softtimer) {
  if (utim == 0) {
   callout_stop(&wd_softtimeo_handle);
  } else {
   (void) callout_reset(&wd_softtimeo_handle,
       pow2ns_to_ticks(utim), wd_timeout_cb, "soft");
  }
  error = 0;
 } else {
  EVENTHANDLER_INVOKE(watchdog_list, utim, &error);
 }





 if (error == EOPNOTSUPP && first && *wdog_software_attach != ((void*)0)) {
  (*wdog_software_attach)();
  EVENTHANDLER_INVOKE(watchdog_list, utim, &error);
 }
 first = 0;

 wd_set_pretimeout(wd_pretimeout, 1);




 if (!error) {
  struct timespec ts;

  error = kern_clock_gettime(curthread ,
      CLOCK_MONOTONIC_FAST, &ts);
  if (!error) {
   wd_lastpat = ts.tv_sec;
   wd_lastpat_valid = 1;
  }
 }
 return (error);
}
