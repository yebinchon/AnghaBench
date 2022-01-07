
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int cr_agroups; } ;
struct proc {struct ucred* p_ucred; } ;


 int MA_OWNED ;
 int PROC_LOCK (struct proc*) ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int PROC_UNLOCK (struct proc*) ;
 int crcopy (struct ucred*,struct ucred*) ;
 int crextend (struct ucred*,int) ;

struct ucred *
crcopysafe(struct proc *p, struct ucred *cr)
{
 struct ucred *oldcred;
 int groups;

 PROC_LOCK_ASSERT(p, MA_OWNED);

 oldcred = p->p_ucred;
 while (cr->cr_agroups < oldcred->cr_agroups) {
  groups = oldcred->cr_agroups;
  PROC_UNLOCK(p);
  crextend(cr, groups);
  PROC_LOCK(p);
  oldcred = p->p_ucred;
 }
 crcopy(cr, oldcred);

 return (oldcred);
}
