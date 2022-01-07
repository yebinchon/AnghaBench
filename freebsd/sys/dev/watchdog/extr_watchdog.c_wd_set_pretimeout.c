
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct timespec {int tv_sec; } ;


 int EINVAL ;
 int callout_reset (int *,int,int ,char*) ;
 int callout_stop (int *) ;
 int hz ;
 int pow2ns_to_ticks (int) ;
 int pow2ns_to_ts (int,struct timespec*) ;
 int printf (char*,int,int,int,int,int,int) ;
 int wd_pretimeo_handle ;
 int wd_pretimeout ;
 int wd_timeout_cb ;
 int wdog_kern_last_timeout () ;

__attribute__((used)) static int
wd_set_pretimeout(int newtimeout, int disableiftoolong)
{
 u_int utime;
 struct timespec utime_ts;
 int timeout_ticks;

 utime = wdog_kern_last_timeout();
 pow2ns_to_ts(utime, &utime_ts);

 if (newtimeout >= utime_ts.tv_sec) {




  if (disableiftoolong)
   newtimeout = 0;
  else
   return EINVAL;
 }


 if (newtimeout == 0) {
  wd_pretimeout = 0;
  callout_stop(&wd_pretimeo_handle);
  return 0;
 }

 timeout_ticks = pow2ns_to_ticks(utime) - (hz*newtimeout);
 (void) callout_reset(&wd_pretimeo_handle,
     timeout_ticks, wd_timeout_cb, "pre");
 wd_pretimeout = newtimeout;
 return 0;
}
