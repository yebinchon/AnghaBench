
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct pppTimer {scalar_t__ rest; int arg; int (* func ) (int ) ;struct pppTimer* enext; struct pppTimer* next; int state; } ;


 struct pppTimer* ExpiredList ;
 int LogTIMER ;
 int TIMER_EXPIRED ;
 struct pppTimer* TimerList ;
 scalar_t__ log_IsKept (int ) ;
 int stub1 (int ) ;
 scalar_t__ time (int *) ;
 int timer_InitService (int) ;
 int timer_Show (int ,int *) ;
 int timer_TermService () ;

__attribute__((used)) static void
TimerService(void)
{
  struct pppTimer *tp, *exp, *next;

  if (log_IsKept(LogTIMER)) {
    static time_t t;
    time_t n = time(((void*)0));

    if (n > t)
      timer_Show(LogTIMER, ((void*)0));
    t = n;
  }

  tp = TimerList;
  if (tp) {
    tp->rest = 0;


    exp = ((void*)0);
    do {
      tp->state = TIMER_EXPIRED;
      next = tp->next;
      tp->enext = exp;
      exp = tp;
      tp = next;
    } while (tp && tp->rest == 0);

    TimerList = tp;
    if (TimerList != ((void*)0))
      timer_InitService(1);
    else
      timer_TermService();


    while (exp) {
      ExpiredList = exp->enext;
      exp->enext = ((void*)0);
      if (exp->func)
        (*exp->func)(exp->arg);
      exp = ExpiredList;
    }
  }
}
