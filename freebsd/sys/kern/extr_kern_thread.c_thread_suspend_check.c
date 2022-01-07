
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int td_flags; struct proc* td_proc; } ;
struct proc {int p_flag; scalar_t__ p_numthreads; scalar_t__ p_suspcount; int p_boundary_count; struct thread* p_singlethread; TYPE_1__* p_sysent; } ;
struct TYPE_2__ {int (* sv_thread_detach ) (struct thread*) ;} ;


 int EINTR ;
 int ERESTART ;
 int Giant ;
 int KASSERT (int,char*) ;
 int MA_NOTOWNED ;
 int MA_OWNED ;
 int PROC_LOCK (struct proc*) ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int PROC_SLOCK (struct proc*) ;
 int PROC_SUNLOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 scalar_t__ P_SHOULDSTOP (struct proc*) ;
 int P_SINGLE_BOUNDARY ;
 int P_SINGLE_EXIT ;
 scalar_t__ P_STOPPED_SINGLE ;
 int SWT_SUSPEND ;
 int SW_INVOL ;
 int TDF_BOUNDARY ;
 int TDF_SBDRY ;
 int TDF_SEINTR ;
 int TDF_SERESTART ;
 int TD_SBDRY_ERRNO (struct thread*) ;
 scalar_t__ TD_SBDRY_INTR (struct thread*) ;
 scalar_t__ __predict_false (int ) ;
 struct thread* curthread ;
 int kern_thr_exit (struct thread*) ;
 int kick_proc0 () ;
 int mi_switch (int,int *) ;
 int mtx_assert (int *,int ) ;
 int panic (char*) ;
 int stub1 (struct thread*) ;
 int thread_lock (struct thread*) ;
 int thread_stopped (struct proc*) ;
 scalar_t__ thread_suspend_check_needed () ;
 int thread_suspend_one (struct thread*) ;
 int thread_unlock (struct thread*) ;
 int thread_unsuspend_one (struct thread*,struct proc*,int) ;
 int umtx_thread_exit (struct thread*) ;

int
thread_suspend_check(int return_instead)
{
 struct thread *td;
 struct proc *p;
 int wakeup_swapper;

 td = curthread;
 p = td->td_proc;
 mtx_assert(&Giant, MA_NOTOWNED);
 PROC_LOCK_ASSERT(p, MA_OWNED);
 while (thread_suspend_check_needed()) {
  if (P_SHOULDSTOP(p) == P_STOPPED_SINGLE) {
   KASSERT(p->p_singlethread != ((void*)0),
       ("singlethread not set"));






   if (p->p_singlethread == td)
    return (0);
  }
  if ((p->p_flag & P_SINGLE_EXIT) && return_instead)
   return (EINTR);


  if (P_SHOULDSTOP(p) == P_STOPPED_SINGLE &&
      (p->p_flag & P_SINGLE_BOUNDARY) && return_instead)
   return (ERESTART);




  if ((td->td_flags & TDF_SBDRY) != 0) {
   KASSERT(return_instead,
       ("TDF_SBDRY set for unsafe thread_suspend_check"));
   KASSERT((td->td_flags & (TDF_SEINTR | TDF_SERESTART)) !=
       (TDF_SEINTR | TDF_SERESTART),
       ("both TDF_SEINTR and TDF_SERESTART"));
   return (TD_SBDRY_INTR(td) ? TD_SBDRY_ERRNO(td) : 0);
  }






  if ((p->p_flag & P_SINGLE_EXIT) && (p->p_singlethread != td)) {
   PROC_UNLOCK(p);





   if (__predict_false(p->p_sysent->sv_thread_detach != ((void*)0)))
    (p->p_sysent->sv_thread_detach)(td);
   umtx_thread_exit(td);
   kern_thr_exit(td);
   panic("stopped thread did not exit");
  }

  PROC_SLOCK(p);
  thread_stopped(p);
  if (P_SHOULDSTOP(p) == P_STOPPED_SINGLE) {
   if (p->p_numthreads == p->p_suspcount + 1) {
    thread_lock(p->p_singlethread);
    wakeup_swapper = thread_unsuspend_one(
        p->p_singlethread, p, 0);
    thread_unlock(p->p_singlethread);
    if (wakeup_swapper)
     kick_proc0();
   }
  }
  PROC_UNLOCK(p);
  thread_lock(td);




  thread_suspend_one(td);
  if (return_instead == 0) {
   p->p_boundary_count++;
   td->td_flags |= TDF_BOUNDARY;
  }
  PROC_SUNLOCK(p);
  mi_switch(SW_INVOL | SWT_SUSPEND, ((void*)0));
  thread_unlock(td);
  PROC_LOCK(p);
 }
 return (0);
}
