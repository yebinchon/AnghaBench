
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tv_sec; } ;
struct TYPE_3__ {int tv_sec; } ;
struct sigaction {TYPE_2__ it_value; TYPE_1__ it_interval; int sa_mask; int sa_handler; } ;
struct itimerval {TYPE_2__ it_value; TYPE_1__ it_interval; int sa_mask; int sa_handler; } ;
typedef int sa ;
typedef int itv ;


 int ITIMER_REAL ;
 int SIGALRM ;
 int bzero (struct sigaction*,int) ;
 int log_debugx (char*,...) ;
 int log_err (int,char*) ;
 int setitimer (int ,struct sigaction*,int *) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigalrm_handler ;
 int sigalrm_handler_fatal ;
 int sigalrm_received ;
 int sigfillset (int *) ;

void
set_timeout(int timeout, int fatal)
{
 struct sigaction sa;
 struct itimerval itv;
 int error;

 if (timeout <= 0) {
  log_debugx("session timeout disabled");
  bzero(&itv, sizeof(itv));
  error = setitimer(ITIMER_REAL, &itv, ((void*)0));
  if (error != 0)
   log_err(1, "setitimer");
  sigalrm_received = 0;
  return;
 }

 sigalrm_received = 0;
 bzero(&sa, sizeof(sa));
 if (fatal)
  sa.sa_handler = sigalrm_handler_fatal;
 else
  sa.sa_handler = sigalrm_handler;
 sigfillset(&sa.sa_mask);
 error = sigaction(SIGALRM, &sa, ((void*)0));
 if (error != 0)
  log_err(1, "sigaction");





 log_debugx("setting session timeout to %d seconds", timeout);
 bzero(&itv, sizeof(itv));
 itv.it_interval.tv_sec = 1;
 itv.it_value.tv_sec = timeout;
 error = setitimer(ITIMER_REAL, &itv, ((void*)0));
 if (error != 0)
  log_err(1, "setitimer");
}
