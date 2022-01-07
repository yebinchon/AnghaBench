
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct ucred {int cr_ngroups; } ;
struct thread {struct proc* td_proc; } ;
struct proc {int dummy; } ;
typedef int gid_t ;


 int AUDIT_ARG_GROUPSET (int *,scalar_t__) ;
 int MPASS (int) ;
 int PRIV_CRED_SETGROUPS ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 struct ucred* crcopysafe (struct proc*,struct ucred*) ;
 int crextend (struct ucred*,scalar_t__) ;
 int crfree (struct ucred*) ;
 struct ucred* crget () ;
 int crsetgroups_locked (struct ucred*,scalar_t__,int *) ;
 int mac_cred_check_setgroups (struct ucred*,scalar_t__,int *) ;
 scalar_t__ ngroups_max ;
 int priv_check_cred (struct ucred*,int ) ;
 int proc_set_cred (struct proc*,struct ucred*) ;
 int setsugid (struct proc*) ;

int
kern_setgroups(struct thread *td, u_int ngrp, gid_t *groups)
{
 struct proc *p = td->td_proc;
 struct ucred *newcred, *oldcred;
 int error;

 MPASS(ngrp <= ngroups_max + 1);
 AUDIT_ARG_GROUPSET(groups, ngrp);
 newcred = crget();
 crextend(newcred, ngrp);
 PROC_LOCK(p);
 oldcred = crcopysafe(p, newcred);







 error = priv_check_cred(oldcred, PRIV_CRED_SETGROUPS);
 if (error)
  goto fail;

 if (ngrp == 0) {






  newcred->cr_ngroups = 1;
 } else {
  crsetgroups_locked(newcred, ngrp, groups);
 }
 setsugid(p);
 proc_set_cred(p, newcred);
 PROC_UNLOCK(p);
 crfree(oldcred);
 return (0);

fail:
 PROC_UNLOCK(p);
 crfree(newcred);
 return (error);
}
