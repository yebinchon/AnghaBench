
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_pflags; int td_flags; struct proc* td_proc; } ;
struct proc {int p_mtx; } ;


 int EINVAL ;
 int PDROP ;
 int PPAUSE ;
 int PROC_LOCK (struct proc*) ;
 int TDF_KTH_SUSP ;
 int TDP_KTHREAD ;
 int msleep (int *,int *,int,char*,int) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;

int
kthread_suspend(struct thread *td, int timo)
{
 struct proc *p;

 p = td->td_proc;






 if ((td->td_pflags & TDP_KTHREAD) == 0)
  return (EINVAL);






 PROC_LOCK(p);
 thread_lock(td);
 td->td_flags |= TDF_KTH_SUSP;
 thread_unlock(td);
 return (msleep(&td->td_flags, &p->p_mtx, PPAUSE | PDROP, "suspkt",
     timo));
}
