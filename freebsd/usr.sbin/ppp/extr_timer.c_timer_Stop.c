
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pppTimer {int dummy; } ;
typedef int sigset_t ;


 int SIGALRM ;
 int SIG_BLOCK ;
 int SIG_SETMASK ;
 int StopTimerNoBlock (struct pppTimer*) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;

void
timer_Stop(struct pppTimer *tp)
{
  sigset_t mask, omask;

  sigemptyset(&mask);
  sigaddset(&mask, SIGALRM);
  sigprocmask(SIG_BLOCK, &mask, &omask);
  StopTimerNoBlock(tp);
  sigprocmask(SIG_SETMASK, &omask, ((void*)0));
}
