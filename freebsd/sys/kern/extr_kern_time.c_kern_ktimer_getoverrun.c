
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int * td_retval; struct proc* td_proc; } ;
struct proc {int dummy; } ;
struct itimer {int it_overrun_last; } ;


 int EINVAL ;
 int ITIMER_UNLOCK (struct itimer*) ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 struct itimer* itimer_find (struct proc*,int) ;

int
kern_ktimer_getoverrun(struct thread *td, int timer_id)
{
 struct proc *p = td->td_proc;
 struct itimer *it;
 int error ;

 PROC_LOCK(p);
 if (timer_id < 3 ||
     (it = itimer_find(p, timer_id)) == ((void*)0)) {
  PROC_UNLOCK(p);
  error = EINVAL;
 } else {
  td->td_retval[0] = it->it_overrun_last;
  ITIMER_UNLOCK(it);
  PROC_UNLOCK(p);
  error = 0;
 }
 return (error);
}
