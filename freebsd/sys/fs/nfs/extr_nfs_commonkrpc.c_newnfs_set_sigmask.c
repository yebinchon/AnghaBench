
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int td_sigmask; struct proc* td_proc; } ;
struct proc {TYPE_1__* p_sigacts; } ;
typedef int sigset_t ;
struct TYPE_2__ {int ps_mtx; int ps_sigignore; } ;


 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int SIGDELSET (int ,int ) ;
 int SIGFILLSET (int ) ;
 int SIGISMEMBER (int ,int ) ;
 int SIGPROCMASK_PROC_LOCKED ;
 int SIG_SETMASK ;
 struct thread* curthread ;
 int kern_sigprocmask (struct thread*,int ,int *,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int * newnfs_sig_set ;
 int nitems (int *) ;

void
newnfs_set_sigmask(struct thread *td, sigset_t *oldset)
{
 sigset_t newset;
 int i;
 struct proc *p;

 SIGFILLSET(newset);
 if (td == ((void*)0))
  td = curthread;
 p = td->td_proc;

 PROC_LOCK(p);
 mtx_lock(&p->p_sigacts->ps_mtx);
 for (i = 0 ; i < nitems(newnfs_sig_set); i++) {






  if (!SIGISMEMBER(td->td_sigmask, newnfs_sig_set[i]) &&
      !SIGISMEMBER(p->p_sigacts->ps_sigignore, newnfs_sig_set[i]))
   SIGDELSET(newset, newnfs_sig_set[i]);
 }
 mtx_unlock(&p->p_sigacts->ps_mtx);
 kern_sigprocmask(td, SIG_SETMASK, &newset, oldset,
     SIGPROCMASK_PROC_LOCKED);
 PROC_UNLOCK(p);
}
