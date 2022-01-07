
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct proc {scalar_t__ p_state; struct ucred* p_ucred; } ;


 int MA_OWNED ;
 int MPASS (int) ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int PROC_UPDATE_COW (struct proc*) ;
 scalar_t__ PRS_ZOMBIE ;

struct ucred *
proc_set_cred(struct proc *p, struct ucred *newcred)
{
 struct ucred *oldcred;

 MPASS(p->p_ucred != ((void*)0));
 if (newcred == ((void*)0))
  MPASS(p->p_state == PRS_ZOMBIE);
 else
  PROC_LOCK_ASSERT(p, MA_OWNED);

 oldcred = p->p_ucred;
 p->p_ucred = newcred;
 if (newcred != ((void*)0))
  PROC_UPDATE_COW(p);
 return (oldcred);
}
