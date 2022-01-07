
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc {struct itimers* p_itimers; } ;
struct itimers {struct itimer** its_timers; } ;
struct itimer {int dummy; } ;
struct TYPE_2__ {int * event_hook; } ;


 int CLOCK_CALL (int,int ,struct proc*) ;
 int ITIMER_EV_EXEC ;
 int ITIMER_EV_EXIT ;
 int MAX_CLOCKS ;
 int M_SUBPROC ;
 int TIMER_MAX ;
 int curthread ;
 int event_hook ;
 int free (struct itimers*,int ) ;
 int kern_ktimer_delete (int ,int) ;
 int panic (char*) ;
 TYPE_1__* posix_clocks ;

__attribute__((used)) static void
itimers_event_hook_exit(void *arg, struct proc *p)
{
 struct itimers *its;
 struct itimer *it;
 int event = (int)(intptr_t)arg;
 int i;

 if (p->p_itimers != ((void*)0)) {
  its = p->p_itimers;
  for (i = 0; i < MAX_CLOCKS; ++i) {
   if (posix_clocks[i].event_hook != ((void*)0))
    CLOCK_CALL(i, event_hook, (p, i, event));
  }




  if (event == ITIMER_EV_EXEC)
   i = 3;
  else if (event == ITIMER_EV_EXIT)
   i = 0;
  else
   panic("unhandled event");
  for (; i < TIMER_MAX; ++i) {
   if ((it = its->its_timers[i]) != ((void*)0))
    kern_ktimer_delete(curthread, i);
  }
  if (its->its_timers[0] == ((void*)0) &&
      its->its_timers[1] == ((void*)0) &&
      its->its_timers[2] == ((void*)0)) {
   free(its, M_SUBPROC);
   p->p_itimers = ((void*)0);
  }
 }
}
