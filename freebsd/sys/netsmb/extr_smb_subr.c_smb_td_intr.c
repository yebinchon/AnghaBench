
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int td_siglist; int td_sigmask; struct proc* td_proc; } ;
struct proc {TYPE_1__* p_sigacts; int p_siglist; } ;
typedef int sigset_t ;
struct TYPE_2__ {int ps_mtx; int ps_sigignore; } ;


 int EINTR ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 scalar_t__ SIGNOTEMPTY (int ) ;
 int SIGSETNAND (int ,int ) ;
 int SIGSETOR (int ,int ) ;
 scalar_t__ SMB_SIGMASK (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
smb_td_intr(struct thread *td)
{
 struct proc *p;
 sigset_t tmpset;

 if (td == ((void*)0))
  return 0;

 p = td->td_proc;
 PROC_LOCK(p);
 tmpset = p->p_siglist;
 SIGSETOR(tmpset, td->td_siglist);
 SIGSETNAND(tmpset, td->td_sigmask);
 mtx_lock(&p->p_sigacts->ps_mtx);
 SIGSETNAND(tmpset, p->p_sigacts->ps_sigignore);
 mtx_unlock(&p->p_sigacts->ps_mtx);
 if (SIGNOTEMPTY(td->td_siglist) && SMB_SIGMASK(tmpset)) {
  PROC_UNLOCK(p);
                return EINTR;
 }
 PROC_UNLOCK(p);
 return 0;
}
