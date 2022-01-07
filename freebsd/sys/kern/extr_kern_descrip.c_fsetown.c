
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sigio {int sio_ucred; struct pgrp* sio_pgrp; struct proc* sio_proc; struct sigio** sio_myref; int sio_pgid; } ;
struct proc {scalar_t__ p_session; int p_flag; int p_sigiolst; } ;
struct pgrp {scalar_t__ pg_session; int pg_sigiolst; } ;
typedef int pid_t ;
struct TYPE_4__ {TYPE_1__* td_proc; int td_ucred; } ;
struct TYPE_3__ {scalar_t__ p_session; } ;


 int EPERM ;
 int ESRCH ;
 int M_SIGIO ;
 int M_WAITOK ;
 int PGRP_LOCK (struct pgrp*) ;
 int PGRP_UNLOCK (struct pgrp*) ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int P_WEXIT ;
 int SIGIO_LOCK () ;
 int SIGIO_UNLOCK () ;
 int SLIST_INSERT_HEAD (int *,struct sigio*,int ) ;
 int crfree (int ) ;
 int crhold (int ) ;
 TYPE_2__* curthread ;
 int free (struct sigio*,int ) ;
 int funsetown (struct sigio**) ;
 struct sigio* malloc (int,int ,int ) ;
 struct proc* pfind (int ) ;
 struct pgrp* pgfind (int ) ;
 int proctree_lock ;
 int sio_pgsigio ;
 int sx_slock (int *) ;
 int sx_sunlock (int *) ;

int
fsetown(pid_t pgid, struct sigio **sigiop)
{
 struct proc *proc;
 struct pgrp *pgrp;
 struct sigio *sigio;
 int ret;

 if (pgid == 0) {
  funsetown(sigiop);
  return (0);
 }

 ret = 0;


 sigio = malloc(sizeof(struct sigio), M_SIGIO, M_WAITOK);
 sigio->sio_pgid = pgid;
 sigio->sio_ucred = crhold(curthread->td_ucred);
 sigio->sio_myref = sigiop;

 sx_slock(&proctree_lock);
 if (pgid > 0) {
  proc = pfind(pgid);
  if (proc == ((void*)0)) {
   ret = ESRCH;
   goto fail;
  }
  PROC_UNLOCK(proc);
  if (proc->p_session != curthread->td_proc->p_session) {
   ret = EPERM;
   goto fail;
  }

  pgrp = ((void*)0);
 } else {
  pgrp = pgfind(-pgid);
  if (pgrp == ((void*)0)) {
   ret = ESRCH;
   goto fail;
  }
  PGRP_UNLOCK(pgrp);
  if (pgrp->pg_session != curthread->td_proc->p_session) {
   ret = EPERM;
   goto fail;
  }

  proc = ((void*)0);
 }
 funsetown(sigiop);
 if (pgid > 0) {
  PROC_LOCK(proc);





  if ((proc->p_flag & P_WEXIT) != 0) {
   PROC_UNLOCK(proc);
   ret = ESRCH;
   goto fail;
  }
  SLIST_INSERT_HEAD(&proc->p_sigiolst, sigio, sio_pgsigio);
  sigio->sio_proc = proc;
  PROC_UNLOCK(proc);
 } else {
  PGRP_LOCK(pgrp);
  SLIST_INSERT_HEAD(&pgrp->pg_sigiolst, sigio, sio_pgsigio);
  sigio->sio_pgrp = pgrp;
  PGRP_UNLOCK(pgrp);
 }
 sx_sunlock(&proctree_lock);
 SIGIO_LOCK();
 *sigiop = sigio;
 SIGIO_UNLOCK();
 return (0);

fail:
 sx_sunlock(&proctree_lock);
 crfree(sigio->sio_ucred);
 free(sigio, M_SIGIO);
 return (ret);
}
