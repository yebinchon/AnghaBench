
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {struct proc* td_proc; } ;
struct proc {int p_numthreads; } ;


 int LIST_REMOVE (struct thread*,int ) ;
 int PMC_CALL_HOOK_UNLOCKED (struct thread*,int ,int *) ;
 int PMC_FN_THR_EXIT_LOG ;
 scalar_t__ PMC_SYSTEM_SAMPLING_ACTIVE () ;
 int PROC_LOCK (struct proc*) ;
 int PROC_SLOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 struct thread* curthread ;
 int kproc_exit (int ) ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;
 int td_hash ;
 int tdsigcleanup (struct thread*) ;
 int thread_exit () ;
 int tidhash_lock ;
 int umtx_thread_exit (struct thread*) ;
 int wakeup (struct thread*) ;

void
kthread_exit(void)
{
 struct proc *p;
 struct thread *td;

 td = curthread;
 p = td->td_proc;






 wakeup(td);





 rw_wlock(&tidhash_lock);
 PROC_LOCK(p);
 if (p->p_numthreads == 1) {
  PROC_UNLOCK(p);
  rw_wunlock(&tidhash_lock);
  kproc_exit(0);
 }
 LIST_REMOVE(td, td_hash);
 rw_wunlock(&tidhash_lock);
 umtx_thread_exit(td);
 tdsigcleanup(td);
 PROC_SLOCK(p);
 thread_exit();
}
