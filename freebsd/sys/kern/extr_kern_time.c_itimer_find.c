
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc {TYPE_1__* p_itimers; } ;
struct itimer {int it_flags; } ;
struct TYPE_2__ {struct itimer** its_timers; } ;


 int ITF_DELETING ;
 int ITIMER_LOCK (struct itimer*) ;
 int ITIMER_UNLOCK (struct itimer*) ;
 int MA_OWNED ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int TIMER_MAX ;

__attribute__((used)) static struct itimer *
itimer_find(struct proc *p, int timerid)
{
 struct itimer *it;

 PROC_LOCK_ASSERT(p, MA_OWNED);
 if ((p->p_itimers == ((void*)0)) ||
     (timerid < 0) || (timerid >= TIMER_MAX) ||
     (it = p->p_itimers->its_timers[timerid]) == ((void*)0)) {
  return (((void*)0));
 }
 ITIMER_LOCK(it);
 if ((it->it_flags & ITF_DELETING) != 0) {
  ITIMER_UNLOCK(it);
  it = ((void*)0);
 }
 return (it);
}
