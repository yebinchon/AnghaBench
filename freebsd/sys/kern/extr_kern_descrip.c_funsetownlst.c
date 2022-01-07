
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigiolst {int dummy; } ;
struct sigio {scalar_t__ sio_pgid; int sio_ucred; struct proc* sio_proc; struct pgrp* sio_pgrp; int ** sio_myref; } ;
struct proc {int p_sigiolst; } ;
struct pgrp {int pg_sigiolst; } ;


 int KASSERT (int,char*) ;
 int MA_NOTOWNED ;
 int M_SIGIO ;
 int PGRP_LOCK (struct pgrp*) ;
 int PGRP_LOCK_ASSERT (struct pgrp*,int ) ;
 int PGRP_UNLOCK (struct pgrp*) ;
 int PROC_LOCK (struct proc*) ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int PROC_UNLOCK (struct proc*) ;
 int SIGIO_LOCK () ;
 int SIGIO_UNLOCK () ;
 struct sigio* SLIST_FIRST (struct sigiolst*) ;
 int SLIST_REMOVE (int *,struct sigio*,struct sigio*,int ) ;
 int crfree (int ) ;
 int free (struct sigio*,int ) ;
 int sio_pgsigio ;

void
funsetownlst(struct sigiolst *sigiolst)
{
 struct proc *p;
 struct pgrp *pg;
 struct sigio *sigio;

 sigio = SLIST_FIRST(sigiolst);
 if (sigio == ((void*)0))
  return;
 p = ((void*)0);
 pg = ((void*)0);





 if (sigio->sio_pgid < 0) {
  pg = sigio->sio_pgrp;
  PGRP_LOCK_ASSERT(pg, MA_NOTOWNED);
 } else {
  p = sigio->sio_proc;
  PROC_LOCK_ASSERT(p, MA_NOTOWNED);
 }

 SIGIO_LOCK();
 while ((sigio = SLIST_FIRST(sigiolst)) != ((void*)0)) {
  *(sigio->sio_myref) = ((void*)0);
  if (pg != ((void*)0)) {
   KASSERT(sigio->sio_pgid < 0,
       ("Proc sigio in pgrp sigio list"));
   KASSERT(sigio->sio_pgrp == pg,
       ("Bogus pgrp in sigio list"));
   PGRP_LOCK(pg);
   SLIST_REMOVE(&pg->pg_sigiolst, sigio, sigio,
       sio_pgsigio);
   PGRP_UNLOCK(pg);
  } else {
   KASSERT(sigio->sio_pgid > 0,
       ("Pgrp sigio in proc sigio list"));
   KASSERT(sigio->sio_proc == p,
       ("Bogus proc in sigio list"));
   PROC_LOCK(p);
   SLIST_REMOVE(&p->p_sigiolst, sigio, sigio,
       sio_pgsigio);
   PROC_UNLOCK(p);
  }
  SIGIO_UNLOCK();
  crfree(sigio->sio_ucred);
  free(sigio, M_SIGIO);
  SIGIO_LOCK();
 }
 SIGIO_UNLOCK();
}
