
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {scalar_t__ td_tid; int td_flags; struct proc* td_proc; int td_pflags; } ;
struct thr_wake_args {scalar_t__ id; } ;
struct proc {int p_pid; } ;
typedef int lwpid_t ;


 int ESRCH ;
 int PROC_UNLOCK (struct proc*) ;
 int TDF_THRWAKEUP ;
 int TDP_WAKEUP ;
 struct thread* tdfind (int ,int ) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;
 int wakeup (void*) ;

int
sys_thr_wake(struct thread *td, struct thr_wake_args *uap)

{
 struct proc *p;
 struct thread *ttd;

 if (uap->id == td->td_tid) {
  td->td_pflags |= TDP_WAKEUP;
  return (0);
 }

 p = td->td_proc;
 ttd = tdfind((lwpid_t)uap->id, p->p_pid);
 if (ttd == ((void*)0))
  return (ESRCH);
 thread_lock(ttd);
 ttd->td_flags |= TDF_THRWAKEUP;
 thread_unlock(ttd);
 wakeup((void *)ttd);
 PROC_UNLOCK(p);
 return (0);
}
