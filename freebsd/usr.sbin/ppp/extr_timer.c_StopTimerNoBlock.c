
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pppTimer {scalar_t__ state; scalar_t__ rest; struct pppTimer* enext; struct pppTimer* next; int name; } ;
struct itimerval {int dummy; } ;


 struct pppTimer* ExpiredList ;
 int ITIMER_REAL ;
 int LogERROR ;
 scalar_t__ RESTVAL (struct itimerval) ;
 scalar_t__ TIMER_RUNNING ;
 scalar_t__ TIMER_STOPPED ;
 struct pppTimer* TimerList ;
 scalar_t__ getitimer (int ,struct itimerval*) ;
 int log_Printf (int ,char*,int ) ;
 int timer_InitService (int) ;
 int timer_TermService () ;

__attribute__((used)) static void
StopTimerNoBlock(struct pppTimer *tp)
{
  struct itimerval itimer;
  struct pppTimer *t, *pt;







  if (tp->state == TIMER_STOPPED)
    return;

  pt = ((void*)0);
  for (t = TimerList; t != tp && t != ((void*)0); t = t->next)
    pt = t;

  if (t) {
    if (pt)
      pt->next = t->next;
    else {
      TimerList = t->next;
      if (TimerList == ((void*)0))
 timer_TermService();
    }
    if (t->next) {
      if (!pt && getitimer(ITIMER_REAL, &itimer) == 0)
        t->next->rest += RESTVAL(itimer);
      else
        t->next->rest += t->rest;
      if (!pt && t->next->rest > 0)
        timer_InitService(1);
    }
  } else {

    pt = ((void*)0);
    for (t = ExpiredList; t != tp && t != ((void*)0); t = t->enext)
      pt = t;

    if (t) {
      if (pt)
        pt->enext = t->enext;
      else
        ExpiredList = t->enext;
    } else if (tp->state == TIMER_RUNNING)
      log_Printf(LogERROR, "Oops, %s timer not found!!\n", tp->name);
  }

  tp->next = tp->enext = ((void*)0);
  tp->state = TIMER_STOPPED;
}
