
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_3__ {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct itimerval {TYPE_2__ it_value; TYPE_1__ it_interval; } ;


 int ITIMER_REAL ;
 int LogERROR ;
 int SIGALRM ;
 int SIG_IGN ;
 int errno ;
 int log_Printf (int ,char*,int ) ;
 int setitimer (int ,struct itimerval*,int *) ;
 int sig_signal (int ,int ) ;
 int strerror (int ) ;

void
timer_TermService(void)
{
  struct itimerval itimer;

  itimer.it_interval.tv_usec = itimer.it_interval.tv_sec = 0;
  itimer.it_value.tv_usec = itimer.it_value.tv_sec = 0;
  if (setitimer(ITIMER_REAL, &itimer, ((void*)0)) == -1)
    log_Printf(LogERROR, "Unable to set itimer (%s)\n", strerror(errno));
  sig_signal(SIGALRM, SIG_IGN);
}
