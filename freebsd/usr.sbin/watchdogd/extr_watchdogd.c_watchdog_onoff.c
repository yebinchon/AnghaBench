
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WDIOC_SETPRETIMEOUT ;
 int WDIOC_SETPRETIMEOUTACT ;
 int WDIOC_SETSOFT ;
 int WDIOC_SETSOFTTIMEOUTACT ;
 int WD_ACTIVE ;
 int exit_timeout ;
 int fd ;
 int ioctl (int ,int ,int *) ;
 scalar_t__ is_dry_run ;
 int pretimeout ;
 int pretimeout_act ;
 scalar_t__ pretimeout_act_set ;
 scalar_t__ pretimeout_set ;
 int softtimeout_act ;
 scalar_t__ softtimeout_act_set ;
 int softtimeout_set ;
 int timeout ;
 int warn (char*,...) ;
 int watchdog_patpat (int) ;

__attribute__((used)) static int
watchdog_onoff(int onoff)
{
 int error;


 if (is_dry_run)
  return 0;

 if (onoff) {





  error = ioctl(fd, WDIOC_SETSOFT, &softtimeout_set);
  if (error) {
   warn("setting WDIOC_SETSOFT %d", softtimeout_set);
   return (error);
  }
  error = watchdog_patpat((timeout|WD_ACTIVE));
  if (error) {
   warn("watchdog_patpat failed");
   goto failsafe;
  }
  if (softtimeout_act_set) {
   error = ioctl(fd, WDIOC_SETSOFTTIMEOUTACT,
       &softtimeout_act);
   if (error) {
    warn("setting WDIOC_SETSOFTTIMEOUTACT %d",
        softtimeout_act);
    goto failsafe;
   }
  }
  if (pretimeout_set) {
   error = ioctl(fd, WDIOC_SETPRETIMEOUT, &pretimeout);
   if (error) {
    warn("setting WDIOC_SETPRETIMEOUT %d",
        pretimeout);
    goto failsafe;
   }
  }
  if (pretimeout_act_set) {
   error = ioctl(fd, WDIOC_SETPRETIMEOUTACT,
       &pretimeout_act);
   if (error) {
    warn("setting WDIOC_SETPRETIMEOUTACT %d",
        pretimeout_act);
    goto failsafe;
   }
  }

  return watchdog_patpat((timeout|WD_ACTIVE));
  } else {
  return watchdog_patpat(exit_timeout);
  }
failsafe:
 watchdog_patpat(exit_timeout);
 return (error);
}
