
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct uidinfo {int dummy; } ;
struct ucred {scalar_t__ cr_ruid; scalar_t__ cr_svuid; scalar_t__ cr_uid; } ;
struct thread {struct proc* td_proc; } ;
struct setuid_args {scalar_t__ uid; } ;
struct proc {int dummy; } ;


 int AUDIT_ARG_UID (scalar_t__) ;
 int PRIV_CRED_SETUID ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int change_euid (struct ucred*,struct uidinfo*) ;
 int change_ruid (struct ucred*,struct uidinfo*) ;
 int change_svuid (struct ucred*,scalar_t__) ;
 struct ucred* crcopysafe (struct proc*,struct ucred*) ;
 int crfree (struct ucred*) ;
 struct ucred* crget () ;
 int crhold (struct ucred*) ;
 int mac_cred_check_setuid (struct ucred*,scalar_t__) ;
 int priv_check_cred (struct ucred*,int ) ;
 int proc_set_cred (struct proc*,struct ucred*) ;
 int racct_proc_ucred_changed (struct proc*,struct ucred*,struct ucred*) ;
 int rctl_proc_ucred_changed (struct proc*,struct ucred*) ;
 int setsugid (struct proc*) ;
 struct uidinfo* uifind (scalar_t__) ;
 int uifree (struct uidinfo*) ;

int
sys_setuid(struct thread *td, struct setuid_args *uap)
{
 struct proc *p = td->td_proc;
 struct ucred *newcred, *oldcred;
 uid_t uid;
 struct uidinfo *uip;
 int error;

 uid = uap->uid;
 AUDIT_ARG_UID(uid);
 newcred = crget();
 uip = uifind(uid);
 PROC_LOCK(p);



 oldcred = crcopysafe(p, newcred);
 if (uid != oldcred->cr_ruid &&






     (error = priv_check_cred(oldcred, PRIV_CRED_SETUID)) != 0)
  goto fail;
 {



  if (uid != oldcred->cr_ruid) {
   change_ruid(newcred, uip);
   setsugid(p);
  }







  if (uid != oldcred->cr_svuid) {
   change_svuid(newcred, uid);
   setsugid(p);
  }
 }




 if (uid != oldcred->cr_uid) {
  change_euid(newcred, uip);
  setsugid(p);
 }
 proc_set_cred(p, newcred);




 PROC_UNLOCK(p);




 uifree(uip);
 crfree(oldcred);
 return (0);

fail:
 PROC_UNLOCK(p);
 uifree(uip);
 crfree(newcred);
 return (error);
}
