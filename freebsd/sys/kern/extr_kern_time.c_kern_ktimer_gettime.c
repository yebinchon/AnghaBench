
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {struct proc* td_proc; } ;
struct proc {int dummy; } ;
struct itimerspec {int dummy; } ;
struct itimer {int it_clockid; } ;


 int CLOCK_CALL (int ,int ,struct itimer*) ;
 int EINVAL ;
 int ITIMER_UNLOCK (struct itimer*) ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int itimer_enter (struct itimer*) ;
 struct itimer* itimer_find (struct proc*,int) ;
 int itimer_leave (struct itimer*) ;
 int timer_gettime ;

int
kern_ktimer_gettime(struct thread *td, int timer_id, struct itimerspec *val)
{
 struct proc *p;
 struct itimer *it;
 int error;

 p = td->td_proc;
 PROC_LOCK(p);
 if (timer_id < 3 || (it = itimer_find(p, timer_id)) == ((void*)0)) {
  PROC_UNLOCK(p);
  error = EINVAL;
 } else {
  PROC_UNLOCK(p);
  itimer_enter(it);
  error = CLOCK_CALL(it->it_clockid, timer_gettime, (it, val));
  itimer_leave(it);
  ITIMER_UNLOCK(it);
 }
 return (error);
}
