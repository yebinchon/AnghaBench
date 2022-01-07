
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DAEMON ;
 int LOG_NDELAY ;
 int LOG_PID ;
 int debug ;
 int openlog (char*,int,int ) ;
 int tzset () ;

void
log_init(int n_debug)
{
 extern char *__progname;

 debug = n_debug;

 if (!debug)
  openlog(__progname, LOG_PID | LOG_NDELAY, LOG_DAEMON);

 tzset();
}
