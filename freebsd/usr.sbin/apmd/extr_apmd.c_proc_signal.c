
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_INFO ;
 int LOG_NOTICE ;



 int read (int,int*,int) ;
 int restart () ;
 int syslog (int ,char*,...) ;
 int wait_child () ;
 int warn (char*,int) ;

int
proc_signal(int fd)
{
 int rc = 0;
 int sig;

 while (read(fd, &sig, sizeof sig) == sizeof sig) {
  syslog(LOG_INFO, "caught signal: %d", sig);
  switch (sig) {
  case 129:
   syslog(LOG_NOTICE, "restart by SIG");
   restart();
   break;
  case 128:
   syslog(LOG_NOTICE, "going down on signal %d", sig);
   rc = -1;
   return rc;
  case 130:
   wait_child();
   break;
  default:
   warn("unexpected signal(%d) received.", sig);
   break;
  }
 }
 return rc;
}
