
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kdb_why ;


 int KDB_WHY_WATCHDOG ;
 int LOG_EMERG ;
 int WD_SOFT_DDB ;
 int WD_SOFT_LOG ;
 int WD_SOFT_PANIC ;
 int WD_SOFT_PRINTF ;
 int kdb_backtrace () ;
 int kdb_enter (int ,char*) ;
 int log (int ,char*,char const*) ;
 int panic (char*,char const*) ;
 int printf (char*,char const*) ;
 int snprintf (char*,int,char*,char const*) ;
 int wd_pretimeout_act ;

__attribute__((used)) static void
wd_timeout_cb(void *arg)
{
 const char *type = arg;
 if ((wd_pretimeout_act & WD_SOFT_LOG))
  log(LOG_EMERG, "watchdog %s-timeout, WD_SOFT_LOG\n", type);
 if ((wd_pretimeout_act & WD_SOFT_PRINTF))
  printf("watchdog %s-timeout, WD_SOFT_PRINTF\n", type);
 if ((wd_pretimeout_act & WD_SOFT_PANIC))
  panic("watchdog %s-timeout, WD_SOFT_PANIC set", type);
}
