
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_INFO ;
 int _PATH_SOCKETNAME ;
 int exit (int ) ;
 scalar_t__ lflag ;
 int syslog (int ,char*,...) ;
 int unlink (int ) ;

__attribute__((used)) static void
mcleanup(int signo)
{



 if (lflag) {
  if (signo)
   syslog(LOG_INFO, "exiting on signal %d", signo);
  else
   syslog(LOG_INFO, "exiting");
 }
 unlink(_PATH_SOCKETNAME);
 exit(0);
}
