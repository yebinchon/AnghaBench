
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {scalar_t__ cr_rgid; scalar_t__ cr_svgid; scalar_t__* cr_groups; } ;
struct thread {struct proc* td_proc; } ;
struct setegid_args {scalar_t__ egid; } ;
struct proc {int dummy; } ;
typedef scalar_t__ gid_t ;


 int AUDIT_ARG_EGID (scalar_t__) ;
 int PRIV_CRED_SETEGID ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int change_egid (struct ucred*,scalar_t__) ;
 struct ucred* crcopysafe (struct proc*,struct ucred*) ;
 int crfree (struct ucred*) ;
 struct ucred* crget () ;
 int mac_cred_check_setegid (struct ucred*,scalar_t__) ;
 int priv_check_cred (struct ucred*,int ) ;
 int proc_set_cred (struct proc*,struct ucred*) ;
 int setsugid (struct proc*) ;

int
sys_setegid(struct thread *td, struct setegid_args *uap)
{
 struct proc *p = td->td_proc;
 struct ucred *newcred, *oldcred;
 gid_t egid;
 int error;

 egid = uap->egid;
 AUDIT_ARG_EGID(egid);
 newcred = crget();
 PROC_LOCK(p);
 oldcred = crcopysafe(p, newcred);







 if (egid != oldcred->cr_rgid &&
     egid != oldcred->cr_svgid &&
     (error = priv_check_cred(oldcred, PRIV_CRED_SETEGID)) != 0)
  goto fail;

 if (oldcred->cr_groups[0] != egid) {
  change_egid(newcred, egid);
  setsugid(p);
 }
 proc_set_cred(p, newcred);
 PROC_UNLOCK(p);
 crfree(oldcred);
 return (0);

fail:
 PROC_UNLOCK(p);
 crfree(newcred);
 return (error);
}
