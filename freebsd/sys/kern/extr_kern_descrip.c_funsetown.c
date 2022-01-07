
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigio {scalar_t__ sio_pgid; int sio_ucred; struct proc* sio_proc; struct pgrp* sio_pgrp; int ** sio_myref; } ;
struct proc {int p_sigiolst; } ;
struct pgrp {int pg_sigiolst; } ;


 int M_SIGIO ;
 int PGRP_LOCK (struct pgrp*) ;
 int PGRP_UNLOCK (struct pgrp*) ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int SIGIO_LOCK () ;
 int SIGIO_UNLOCK () ;
 int SLIST_REMOVE (int *,struct sigio*,struct sigio*,int ) ;
 int crfree (int ) ;
 int free (struct sigio*,int ) ;
 int sio_pgsigio ;

void
funsetown(struct sigio **sigiop)
{
 struct sigio *sigio;

 if (*sigiop == ((void*)0))
  return;
 SIGIO_LOCK();
 sigio = *sigiop;
 if (sigio == ((void*)0)) {
  SIGIO_UNLOCK();
  return;
 }
 *(sigio->sio_myref) = ((void*)0);
 if ((sigio)->sio_pgid < 0) {
  struct pgrp *pg = (sigio)->sio_pgrp;
  PGRP_LOCK(pg);
  SLIST_REMOVE(&sigio->sio_pgrp->pg_sigiolst, sigio,
       sigio, sio_pgsigio);
  PGRP_UNLOCK(pg);
 } else {
  struct proc *p = (sigio)->sio_proc;
  PROC_LOCK(p);
  SLIST_REMOVE(&sigio->sio_proc->p_sigiolst, sigio,
       sigio, sio_pgsigio);
  PROC_UNLOCK(p);
 }
 SIGIO_UNLOCK();
 crfree(sigio->sio_ucred);
 free(sigio, M_SIGIO);
}
