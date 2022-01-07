
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {scalar_t__ cr_rgid; scalar_t__ cr_svgid; scalar_t__* cr_groups; } ;
struct thread {struct proc* td_proc; } ;
struct setgid_args {scalar_t__ gid; } ;
struct proc {int dummy; } ;
typedef scalar_t__ gid_t ;


 int AUDIT_ARG_GID (scalar_t__) ;
 int PRIV_CRED_SETGID ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int change_egid (struct ucred*,scalar_t__) ;
 int change_rgid (struct ucred*,scalar_t__) ;
 int change_svgid (struct ucred*,scalar_t__) ;
 struct ucred* crcopysafe (struct proc*,struct ucred*) ;
 int crfree (struct ucred*) ;
 struct ucred* crget () ;
 int mac_cred_check_setgid (struct ucred*,scalar_t__) ;
 int priv_check_cred (struct ucred*,int ) ;
 int proc_set_cred (struct proc*,struct ucred*) ;
 int setsugid (struct proc*) ;

int
sys_setgid(struct thread *td, struct setgid_args *uap)
{
 struct proc *p = td->td_proc;
 struct ucred *newcred, *oldcred;
 gid_t gid;
 int error;

 gid = uap->gid;
 AUDIT_ARG_GID(gid);
 newcred = crget();
 PROC_LOCK(p);
 oldcred = crcopysafe(p, newcred);
 if (gid != oldcred->cr_rgid &&






     (error = priv_check_cred(oldcred, PRIV_CRED_SETGID)) != 0)
  goto fail;
 {



  if (oldcred->cr_rgid != gid) {
   change_rgid(newcred, gid);
   setsugid(p);
  }







  if (oldcred->cr_svgid != gid) {
   change_svgid(newcred, gid);
   setsugid(p);
  }
 }




 if (oldcred->cr_groups[0] != gid) {
  change_egid(newcred, gid);
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
