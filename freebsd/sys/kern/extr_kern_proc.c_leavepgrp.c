
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {struct pgrp* p_pgrp; } ;
struct pgrp {int pg_members; } ;


 scalar_t__ LIST_EMPTY (int *) ;
 int LIST_REMOVE (struct proc*,int ) ;
 int PGRP_LOCK (struct pgrp*) ;
 int PGRP_UNLOCK (struct pgrp*) ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int SX_XLOCKED ;
 int p_pglist ;
 int pgdelete (struct pgrp*) ;
 int proctree_lock ;
 int sx_assert (int *,int ) ;

int
leavepgrp(struct proc *p)
{
 struct pgrp *savepgrp;

 sx_assert(&proctree_lock, SX_XLOCKED);
 savepgrp = p->p_pgrp;
 PGRP_LOCK(savepgrp);
 PROC_LOCK(p);
 LIST_REMOVE(p, p_pglist);
 p->p_pgrp = ((void*)0);
 PROC_UNLOCK(p);
 PGRP_UNLOCK(savepgrp);
 if (LIST_EMPTY(&savepgrp->pg_members))
  pgdelete(savepgrp);
 return (0);
}
