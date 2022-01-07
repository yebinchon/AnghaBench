
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int td_siglist; int td_sigmask; struct proc* td_proc; } ;
struct proc {int p_siglist; TYPE_1__* p_sigacts; } ;
struct nfsmount {int nm_flag; int nm_mountp; } ;
typedef int sigset_t ;
struct TYPE_2__ {int ps_mtx; int ps_sigignore; } ;


 int EINTR ;
 int EIO ;
 scalar_t__ NFSCL_FORCEDISM (int ) ;
 int NFSMNT_INT ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 scalar_t__ SIGNOTEMPTY (int ) ;
 int SIGSETNAND (int ,int ) ;
 int SIGSETOR (int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ nfs_sig_pending (int ) ;

int
newnfs_sigintr(struct nfsmount *nmp, struct thread *td)
{
 struct proc *p;
 sigset_t tmpset;


 if (NFSCL_FORCEDISM(nmp->nm_mountp))
  return (EIO);
 if (!(nmp->nm_flag & NFSMNT_INT))
  return (0);
 if (td == ((void*)0))
  return (0);
 p = td->td_proc;
 PROC_LOCK(p);
 tmpset = p->p_siglist;
 SIGSETOR(tmpset, td->td_siglist);
 SIGSETNAND(tmpset, td->td_sigmask);
 mtx_lock(&p->p_sigacts->ps_mtx);
 SIGSETNAND(tmpset, p->p_sigacts->ps_sigignore);
 mtx_unlock(&p->p_sigacts->ps_mtx);
 if ((SIGNOTEMPTY(p->p_siglist) || SIGNOTEMPTY(td->td_siglist))
     && nfs_sig_pending(tmpset)) {
  PROC_UNLOCK(p);
  return (EINTR);
 }
 PROC_UNLOCK(p);
 return (0);
}
