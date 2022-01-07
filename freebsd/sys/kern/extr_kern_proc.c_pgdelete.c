
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;
struct session {struct tty* s_ttyp; } ;
struct pgrp {int pg_mtx; int pg_id; struct session* pg_session; int pg_sigiolst; } ;


 int LIST_REMOVE (struct pgrp*,int ) ;
 int MA_NOTOWNED ;
 int M_PGRP ;
 int PGRP_LOCK (struct pgrp*) ;
 int PGRP_LOCK_ASSERT (struct pgrp*,int ) ;
 int PGRP_UNLOCK (struct pgrp*) ;
 int PROC_ID_GROUP ;
 int SESS_LOCK_ASSERT (struct session*,int ) ;
 int SX_XLOCKED ;
 int free (struct pgrp*,int ) ;
 int funsetownlst (int *) ;
 int mtx_destroy (int *) ;
 int pg_hash ;
 int proc_id_clear (int ,int ) ;
 int proctree_lock ;
 int sess_release (struct session*) ;
 int sx_assert (int *,int ) ;
 int tty_lock (struct tty*) ;
 int tty_rel_pgrp (struct tty*,struct pgrp*) ;

__attribute__((used)) static void
pgdelete(struct pgrp *pgrp)
{
 struct session *savesess;
 struct tty *tp;

 sx_assert(&proctree_lock, SX_XLOCKED);
 PGRP_LOCK_ASSERT(pgrp, MA_NOTOWNED);
 SESS_LOCK_ASSERT(pgrp->pg_session, MA_NOTOWNED);





 funsetownlst(&pgrp->pg_sigiolst);

 PGRP_LOCK(pgrp);
 tp = pgrp->pg_session->s_ttyp;
 LIST_REMOVE(pgrp, pg_hash);
 savesess = pgrp->pg_session;
 PGRP_UNLOCK(pgrp);


 if (tp != ((void*)0)) {
  tty_lock(tp);
  tty_rel_pgrp(tp, pgrp);
 }

 proc_id_clear(PROC_ID_GROUP, pgrp->pg_id);
 mtx_destroy(&pgrp->pg_mtx);
 free(pgrp, M_PGRP);
 sess_release(savesess);
}
