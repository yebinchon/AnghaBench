
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {scalar_t__ cr_rgid; scalar_t__ cr_svgid; scalar_t__* cr_groups; } ;
struct thread {struct proc* td_proc; } ;
struct setregid_args {scalar_t__ egid; scalar_t__ rgid; } ;
struct proc {int dummy; } ;
typedef scalar_t__ gid_t ;


 int AUDIT_ARG_EGID (scalar_t__) ;
 int AUDIT_ARG_RGID (scalar_t__) ;
 int PRIV_CRED_SETREGID ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int change_egid (struct ucred*,scalar_t__) ;
 int change_rgid (struct ucred*,scalar_t__) ;
 int change_svgid (struct ucred*,scalar_t__) ;
 struct ucred* crcopysafe (struct proc*,struct ucred*) ;
 int crfree (struct ucred*) ;
 struct ucred* crget () ;
 int mac_cred_check_setregid (struct ucred*,scalar_t__,scalar_t__) ;
 int priv_check_cred (struct ucred*,int ) ;
 int proc_set_cred (struct proc*,struct ucred*) ;
 int setsugid (struct proc*) ;

int
sys_setregid(struct thread *td, struct setregid_args *uap)
{
 struct proc *p = td->td_proc;
 struct ucred *newcred, *oldcred;
 gid_t egid, rgid;
 int error;

 egid = uap->egid;
 rgid = uap->rgid;
 AUDIT_ARG_EGID(egid);
 AUDIT_ARG_RGID(rgid);
 newcred = crget();
 PROC_LOCK(p);
 oldcred = crcopysafe(p, newcred);







 if (((rgid != (gid_t)-1 && rgid != oldcred->cr_rgid &&
     rgid != oldcred->cr_svgid) ||
      (egid != (gid_t)-1 && egid != oldcred->cr_groups[0] &&
      egid != oldcred->cr_rgid && egid != oldcred->cr_svgid)) &&
     (error = priv_check_cred(oldcred, PRIV_CRED_SETREGID)) != 0)
  goto fail;

 if (egid != (gid_t)-1 && oldcred->cr_groups[0] != egid) {
  change_egid(newcred, egid);
  setsugid(p);
 }
 if (rgid != (gid_t)-1 && oldcred->cr_rgid != rgid) {
  change_rgid(newcred, rgid);
  setsugid(p);
 }
 if ((rgid != (gid_t)-1 || newcred->cr_groups[0] != newcred->cr_rgid) &&
     newcred->cr_svgid != newcred->cr_groups[0]) {
  change_svgid(newcred, newcred->cr_groups[0]);
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
