
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_flags; struct proc* td_proc; } ;
struct proc {int p_suspcount; } ;


 int DROP_GIANT () ;
 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int PICKUP_GIANT () ;
 int PROC_LOCK (struct proc*) ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int PROC_SLOCK (struct proc*) ;
 int PROC_SLOCK_ASSERT (struct proc*,int ) ;
 int PROC_SUNLOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int SWT_SUSPEND ;
 int SW_VOL ;
 int TDF_NEEDSUSPCHK ;
 int TD_IS_SUSPENDED (struct thread*) ;
 int TD_SET_SUSPENDED (struct thread*) ;
 int mi_switch (int,int *) ;
 int sched_sleep (struct thread*,int ) ;
 int thread_lock (struct thread*) ;
 int thread_stopped (struct proc*) ;
 int thread_unlock (struct thread*) ;

void
thread_suspend_switch(struct thread *td, struct proc *p)
{

 KASSERT(!TD_IS_SUSPENDED(td), ("already suspended"));
 PROC_LOCK_ASSERT(p, MA_OWNED);
 PROC_SLOCK_ASSERT(p, MA_OWNED);




 if (p == td->td_proc) {
  thread_stopped(p);
  p->p_suspcount++;
 }
 PROC_UNLOCK(p);
 thread_lock(td);
 td->td_flags &= ~TDF_NEEDSUSPCHK;
 TD_SET_SUSPENDED(td);
 sched_sleep(td, 0);
 PROC_SUNLOCK(p);
 DROP_GIANT();
 mi_switch(SW_VOL | SWT_SUSPEND, ((void*)0));
 thread_unlock(td);
 PICKUP_GIANT();
 PROC_LOCK(p);
 PROC_SLOCK(p);
}
