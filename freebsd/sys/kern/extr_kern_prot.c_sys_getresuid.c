
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int cr_svuid; int cr_uid; int cr_ruid; } ;
struct thread {struct ucred* td_ucred; } ;
struct getresuid_args {int suid; int euid; int ruid; } ;


 int copyout (int *,int ,int) ;

int
sys_getresuid(struct thread *td, struct getresuid_args *uap)
{
 struct ucred *cred;
 int error1 = 0, error2 = 0, error3 = 0;

 cred = td->td_ucred;
 if (uap->ruid)
  error1 = copyout(&cred->cr_ruid,
      uap->ruid, sizeof(cred->cr_ruid));
 if (uap->euid)
  error2 = copyout(&cred->cr_uid,
      uap->euid, sizeof(cred->cr_uid));
 if (uap->suid)
  error3 = copyout(&cred->cr_svuid,
      uap->suid, sizeof(cred->cr_svuid));
 return (error1 ? error1 : error2 ? error2 : error3);
}
