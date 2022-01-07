
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int sigset_t ;
struct TYPE_9__ {TYPE_1__* p_sigacts; } ;
struct TYPE_8__ {int td_sigmask; } ;
struct TYPE_7__ {int ps_mtx; int ps_sigignore; } ;


 int PROC_LOCK (TYPE_4__*) ;
 int PROC_UNLOCK (TYPE_4__*) ;
 int SIGDELSET (int ,int ) ;
 int SIGFILLSET (int ) ;
 int SIGISMEMBER (int ,int ) ;
 int SIGPROCMASK_PROC_LOCKED ;
 int SIG_SETMASK ;
 int * autofs_sig_set ;
 TYPE_4__* curproc ;
 TYPE_2__* curthread ;
 int kern_sigprocmask (TYPE_2__*,int ,int *,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nitems (int *) ;

__attribute__((used)) static void
autofs_set_sigmask(sigset_t *oldset)
{
 sigset_t newset;
 int i;

 SIGFILLSET(newset);

 PROC_LOCK(curproc);
 mtx_lock(&curproc->p_sigacts->ps_mtx);
 for (i = 0 ; i < nitems(autofs_sig_set); i++) {






  if (!SIGISMEMBER(curthread->td_sigmask, autofs_sig_set[i]) &&
      !SIGISMEMBER(curproc->p_sigacts->ps_sigignore,
      autofs_sig_set[i])) {
   SIGDELSET(newset, autofs_sig_set[i]);
  }
 }
 mtx_unlock(&curproc->p_sigacts->ps_mtx);
 kern_sigprocmask(curthread, SIG_SETMASK, &newset, oldset,
     SIGPROCMASK_PROC_LOCKED);
 PROC_UNLOCK(curproc);
}
