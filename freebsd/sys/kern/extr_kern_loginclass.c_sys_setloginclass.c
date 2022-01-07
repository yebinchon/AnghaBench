
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {struct loginclass* cr_loginclass; } ;
struct thread {struct proc* td_proc; } ;
struct setloginclass_args {int namebuf; } ;
struct proc {int dummy; } ;
struct loginclass {int dummy; } ;
typedef int lcname ;


 int EINVAL ;
 int MAXLOGNAME ;
 int PRIV_PROC_SETLOGINCLASS ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int copyinstr (int ,char*,int,int *) ;
 struct ucred* crcopysafe (struct proc*,struct ucred*) ;
 int crfree (struct ucred*) ;
 struct ucred* crget () ;
 int crhold (struct ucred*) ;
 struct loginclass* loginclass_find (char*) ;
 int loginclass_free (struct loginclass*) ;
 int priv_check (struct thread*,int ) ;
 int proc_set_cred (struct proc*,struct ucred*) ;
 int racct_proc_ucred_changed (struct proc*,struct ucred*,struct ucred*) ;
 int rctl_proc_ucred_changed (struct proc*,struct ucred*) ;

int
sys_setloginclass(struct thread *td, struct setloginclass_args *uap)
{
 struct proc *p = td->td_proc;
 int error;
 char lcname[MAXLOGNAME];
 struct loginclass *newlc;
 struct ucred *newcred, *oldcred;

 error = priv_check(td, PRIV_PROC_SETLOGINCLASS);
 if (error != 0)
  return (error);
 error = copyinstr(uap->namebuf, lcname, sizeof(lcname), ((void*)0));
 if (error != 0)
  return (error);

 newlc = loginclass_find(lcname);
 if (newlc == ((void*)0))
  return (EINVAL);
 newcred = crget();

 PROC_LOCK(p);
 oldcred = crcopysafe(p, newcred);
 newcred->cr_loginclass = newlc;
 proc_set_cred(p, newcred);




 PROC_UNLOCK(p);




 loginclass_free(oldcred->cr_loginclass);
 crfree(oldcred);

 return (0);
}
