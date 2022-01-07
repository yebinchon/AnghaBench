
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct uidinfo {int dummy; } ;
struct ucred {scalar_t__ cr_ruid; scalar_t__ cr_svuid; scalar_t__ cr_uid; } ;
struct thread {struct proc* td_proc; } ;
struct seteuid_args {scalar_t__ euid; } ;
struct proc {int dummy; } ;


 int AUDIT_ARG_EUID (scalar_t__) ;
 int PRIV_CRED_SETEUID ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int change_euid (struct ucred*,struct uidinfo*) ;
 struct ucred* crcopysafe (struct proc*,struct ucred*) ;
 int crfree (struct ucred*) ;
 struct ucred* crget () ;
 int mac_cred_check_seteuid (struct ucred*,scalar_t__) ;
 int priv_check_cred (struct ucred*,int ) ;
 int proc_set_cred (struct proc*,struct ucred*) ;
 int setsugid (struct proc*) ;
 struct uidinfo* uifind (scalar_t__) ;
 int uifree (struct uidinfo*) ;

int
sys_seteuid(struct thread *td, struct seteuid_args *uap)
{
 struct proc *p = td->td_proc;
 struct ucred *newcred, *oldcred;
 uid_t euid;
 struct uidinfo *euip;
 int error;

 euid = uap->euid;
 AUDIT_ARG_EUID(euid);
 newcred = crget();
 euip = uifind(euid);
 PROC_LOCK(p);



 oldcred = crcopysafe(p, newcred);







 if (euid != oldcred->cr_ruid &&
     euid != oldcred->cr_svuid &&
     (error = priv_check_cred(oldcred, PRIV_CRED_SETEUID)) != 0)
  goto fail;




 if (oldcred->cr_uid != euid) {
  change_euid(newcred, euip);
  setsugid(p);
 }
 proc_set_cred(p, newcred);
 PROC_UNLOCK(p);
 uifree(euip);
 crfree(oldcred);
 return (0);

fail:
 PROC_UNLOCK(p);
 uifree(euip);
 crfree(newcred);
 return (error);
}
