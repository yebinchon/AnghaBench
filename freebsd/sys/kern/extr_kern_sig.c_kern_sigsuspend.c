
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int td_pflags; int td_errno; int td_oldsigmask; struct proc* td_proc; } ;
struct proc {TYPE_2__* p_sigacts; int p_mtx; TYPE_1__* p_sysent; } ;
typedef int sigset_t ;
struct TYPE_4__ {int ps_mtx; } ;
struct TYPE_3__ {int (* sv_set_syscall_retval ) (struct thread*,int ) ;} ;


 int EINTR ;
 int EJUSTRETURN ;
 int KASSERT (int,char*) ;
 int PCATCH ;
 int PPAUSE ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int SIGPROCMASK_PROC_LOCKED ;
 int SIG_SETMASK ;
 int TDP_NERRNO ;
 int TDP_OLDMASK ;
 int cursig (struct thread*) ;
 int kern_sigprocmask (struct thread*,int ,int *,int *,int ) ;
 scalar_t__ msleep (TYPE_2__**,int *,int,char*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ postsig (int) ;
 int stub1 (struct thread*,int ) ;
 int thread_suspend_check (int ) ;

int
kern_sigsuspend(struct thread *td, sigset_t mask)
{
 struct proc *p = td->td_proc;
 int has_sig, sig;
 PROC_LOCK(p);
 kern_sigprocmask(td, SIG_SETMASK, &mask, &td->td_oldsigmask,
     SIGPROCMASK_PROC_LOCKED);
 td->td_pflags |= TDP_OLDMASK;







 (p->p_sysent->sv_set_syscall_retval)(td, EINTR);
 for (has_sig = 0; !has_sig;) {
  while (msleep(&p->p_sigacts, &p->p_mtx, PPAUSE|PCATCH, "pause",
   0) == 0)
             ;
  thread_suspend_check(0);
  mtx_lock(&p->p_sigacts->ps_mtx);
  while ((sig = cursig(td)) != 0) {
   KASSERT(sig >= 0, ("sig %d", sig));
   has_sig += postsig(sig);
  }
  mtx_unlock(&p->p_sigacts->ps_mtx);
 }
 PROC_UNLOCK(p);
 td->td_errno = EINTR;
 td->td_pflags |= TDP_NERRNO;
 return (EJUSTRETURN);
}
