
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct uidinfo {int dummy; } ;
struct ucred {scalar_t__ cr_ruid; scalar_t__ cr_svuid; scalar_t__ cr_uid; } ;
struct thread {struct proc* td_proc; } ;
struct setreuid_args {scalar_t__ euid; scalar_t__ ruid; } ;
struct proc {int dummy; } ;


 int AUDIT_ARG_EUID (scalar_t__) ;
 int AUDIT_ARG_RUID (scalar_t__) ;
 int PRIV_CRED_SETREUID ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int change_euid (struct ucred*,struct uidinfo*) ;
 int change_ruid (struct ucred*,struct uidinfo*) ;
 int change_svuid (struct ucred*,scalar_t__) ;
 struct ucred* crcopysafe (struct proc*,struct ucred*) ;
 int crfree (struct ucred*) ;
 struct ucred* crget () ;
 int crhold (struct ucred*) ;
 int mac_cred_check_setreuid (struct ucred*,scalar_t__,scalar_t__) ;
 int priv_check_cred (struct ucred*,int ) ;
 int proc_set_cred (struct proc*,struct ucred*) ;
 int racct_proc_ucred_changed (struct proc*,struct ucred*,struct ucred*) ;
 int rctl_proc_ucred_changed (struct proc*,struct ucred*) ;
 int setsugid (struct proc*) ;
 struct uidinfo* uifind (scalar_t__) ;
 int uifree (struct uidinfo*) ;

int
sys_setreuid(struct thread *td, struct setreuid_args *uap)
{
 struct proc *p = td->td_proc;
 struct ucred *newcred, *oldcred;
 uid_t euid, ruid;
 struct uidinfo *euip, *ruip;
 int error;

 euid = uap->euid;
 ruid = uap->ruid;
 AUDIT_ARG_EUID(euid);
 AUDIT_ARG_RUID(ruid);
 newcred = crget();
 euip = uifind(euid);
 ruip = uifind(ruid);
 PROC_LOCK(p);
 oldcred = crcopysafe(p, newcred);







 if (((ruid != (uid_t)-1 && ruid != oldcred->cr_ruid &&
       ruid != oldcred->cr_svuid) ||
      (euid != (uid_t)-1 && euid != oldcred->cr_uid &&
       euid != oldcred->cr_ruid && euid != oldcred->cr_svuid)) &&
     (error = priv_check_cred(oldcred, PRIV_CRED_SETREUID)) != 0)
  goto fail;

 if (euid != (uid_t)-1 && oldcred->cr_uid != euid) {
  change_euid(newcred, euip);
  setsugid(p);
 }
 if (ruid != (uid_t)-1 && oldcred->cr_ruid != ruid) {
  change_ruid(newcred, ruip);
  setsugid(p);
 }
 if ((ruid != (uid_t)-1 || newcred->cr_uid != newcred->cr_ruid) &&
     newcred->cr_svuid != newcred->cr_uid) {
  change_svuid(newcred, newcred->cr_uid);
  setsugid(p);
 }
 proc_set_cred(p, newcred);




 PROC_UNLOCK(p);




 uifree(ruip);
 uifree(euip);
 crfree(oldcred);
 return (0);

fail:
 PROC_UNLOCK(p);
 uifree(ruip);
 uifree(euip);
 crfree(newcred);
 return (error);
}
