
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {struct pgrp* p_pgrp; int p_session; } ;
struct pgrp {int pg_members; } ;


 scalar_t__ LIST_EMPTY (int *) ;
 int LIST_INSERT_HEAD (int *,struct proc*,int ) ;
 int LIST_REMOVE (struct proc*,int ) ;
 int MA_NOTOWNED ;
 int PGRP_LOCK (struct pgrp*) ;
 int PGRP_LOCK_ASSERT (struct pgrp*,int ) ;
 int PGRP_UNLOCK (struct pgrp*) ;
 int PROC_LOCK (struct proc*) ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int PROC_UNLOCK (struct proc*) ;
 int SESS_LOCK_ASSERT (int ,int ) ;
 int SX_XLOCKED ;
 int fixjobc (struct proc*,struct pgrp*,int) ;
 int p_pglist ;
 int pgdelete (struct pgrp*) ;
 int proctree_lock ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static void
doenterpgrp(struct proc *p, struct pgrp *pgrp)
{
 struct pgrp *savepgrp;

 sx_assert(&proctree_lock, SX_XLOCKED);
 PROC_LOCK_ASSERT(p, MA_NOTOWNED);
 PGRP_LOCK_ASSERT(pgrp, MA_NOTOWNED);
 PGRP_LOCK_ASSERT(p->p_pgrp, MA_NOTOWNED);
 SESS_LOCK_ASSERT(p->p_session, MA_NOTOWNED);

 savepgrp = p->p_pgrp;






 fixjobc(p, pgrp, 1);
 fixjobc(p, p->p_pgrp, 0);

 PGRP_LOCK(pgrp);
 PGRP_LOCK(savepgrp);
 PROC_LOCK(p);
 LIST_REMOVE(p, p_pglist);
 p->p_pgrp = pgrp;
 PROC_UNLOCK(p);
 LIST_INSERT_HEAD(&pgrp->pg_members, p, p_pglist);
 PGRP_UNLOCK(savepgrp);
 PGRP_UNLOCK(pgrp);
 if (LIST_EMPTY(&savepgrp->pg_members))
  pgdelete(savepgrp);
}
