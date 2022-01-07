
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int LOG_WARNING ;
 int SIGCHLD ;
 int SIG_BLOCK ;
 int errno ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 scalar_t__ sigprocmask (int ,int *,int *) ;
 int strerror (int ) ;
 int syslog (int ,char*,int ) ;

void
siglock(void)
{
  sigset_t block;

  sigemptyset(&block);
  sigaddset(&block, SIGCHLD);

  if (sigprocmask(SIG_BLOCK, &block, ((void*)0)) < 0) {
    syslog(LOG_WARNING, "siglock failed: %s", strerror(errno));
  }
}
