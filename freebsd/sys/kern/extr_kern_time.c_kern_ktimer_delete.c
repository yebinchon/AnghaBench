
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {struct proc* td_proc; } ;
struct proc {TYPE_1__* p_itimers; } ;
struct itimer {scalar_t__ it_usecount; int it_ksi; int it_clockid; int it_flags; int it_mtx; } ;
struct TYPE_2__ {int ** its_timers; } ;


 int CLOCK_CALL (int ,int ,struct itimer*) ;
 int EINVAL ;
 int ITF_DELETING ;
 int ITF_WANTED ;
 int ITIMER_UNLOCK (struct itimer*) ;
 scalar_t__ KSI_ONQ (int *) ;
 int PPAUSE ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 struct itimer* itimer_find (struct proc*,int) ;
 int itimer_zone ;
 int msleep (struct itimer*,int *,int ,char*,int ) ;
 int sigqueue_take (int *) ;
 int timer_delete ;
 int uma_zfree (int ,struct itimer*) ;

int
kern_ktimer_delete(struct thread *td, int timerid)
{
 struct proc *p = td->td_proc;
 struct itimer *it;

 PROC_LOCK(p);
 it = itimer_find(p, timerid);
 if (it == ((void*)0)) {
  PROC_UNLOCK(p);
  return (EINVAL);
 }
 PROC_UNLOCK(p);

 it->it_flags |= ITF_DELETING;
 while (it->it_usecount > 0) {
  it->it_flags |= ITF_WANTED;
  msleep(it, &it->it_mtx, PPAUSE, "itimer", 0);
 }
 it->it_flags &= ~ITF_WANTED;
 CLOCK_CALL(it->it_clockid, timer_delete, (it));
 ITIMER_UNLOCK(it);

 PROC_LOCK(p);
 if (KSI_ONQ(&it->it_ksi))
  sigqueue_take(&it->it_ksi);
 p->p_itimers->its_timers[timerid] = ((void*)0);
 PROC_UNLOCK(p);
 uma_zfree(itimer_zone, it);
 return (0);
}
