
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
struct pppTimer {scalar_t__ state; scalar_t__ load; scalar_t__ rest; struct pppTimer* next; int name; } ;
struct itimerval {int dummy; } ;
typedef int sigset_t ;


 int ITIMER_REAL ;
 int LogTIMER ;
 scalar_t__ RESTVAL (struct itimerval) ;
 int SIGALRM ;
 int SIG_BLOCK ;
 int SIG_SETMASK ;
 int StopTimerNoBlock (struct pppTimer*) ;
 scalar_t__ TIMER_RUNNING ;
 scalar_t__ TIMER_STOPPED ;
 struct pppTimer* TimerList ;
 scalar_t__ getitimer (int ,struct itimerval*) ;
 int log_Printf (int ,char*,int ,struct pppTimer*,...) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;
 int timer_InitService (int ) ;

void
timer_Start(struct pppTimer *tp)
{
  struct itimerval itimer;
  struct pppTimer *t, *pt;
  u_long ticks = 0;
  sigset_t mask, omask;

  sigemptyset(&mask);
  sigaddset(&mask, SIGALRM);
  sigprocmask(SIG_BLOCK, &mask, &omask);

  if (tp->state != TIMER_STOPPED)
    StopTimerNoBlock(tp);

  if (tp->load == 0) {
    log_Printf(LogTIMER, "%s timer[%p] has 0 load!\n", tp->name, tp);
    sigprocmask(SIG_SETMASK, &omask, ((void*)0));
    return;
  }





  if (TimerList && getitimer(ITIMER_REAL, &itimer) == 0)
    ticks = RESTVAL(itimer) - TimerList->rest;

  pt = ((void*)0);
  for (t = TimerList; t; t = t->next) {
    if (ticks + t->rest >= tp->load)
      break;
    ticks += t->rest;
    pt = t;
  }

  tp->state = TIMER_RUNNING;
  tp->rest = tp->load - ticks;

  if (t)
    log_Printf(LogTIMER, "timer_Start: Inserting %s timer[%p] before %s "
              "timer[%p], delta = %ld\n", tp->name, tp, t->name, t, tp->rest);
  else
    log_Printf(LogTIMER, "timer_Start: Inserting %s timer[%p]\n", tp->name, tp);


  tp->next = t;
  if (pt) {
    pt->next = tp;
  } else {
    TimerList = tp;
    timer_InitService(t != ((void*)0));
  }
  if (t)
    t->rest -= tp->rest;

  sigprocmask(SIG_SETMASK, &omask, ((void*)0));
}
