
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int cr_svgid; int * cr_groups; int cr_rgid; } ;
struct thread {struct ucred* td_ucred; } ;
struct getresgid_args {int sgid; int egid; int rgid; } ;


 int copyout (int *,int ,int) ;

int
sys_getresgid(struct thread *td, struct getresgid_args *uap)
{
 struct ucred *cred;
 int error1 = 0, error2 = 0, error3 = 0;

 cred = td->td_ucred;
 if (uap->rgid)
  error1 = copyout(&cred->cr_rgid,
      uap->rgid, sizeof(cred->cr_rgid));
 if (uap->egid)
  error2 = copyout(&cred->cr_groups[0],
      uap->egid, sizeof(cred->cr_groups[0]));
 if (uap->sgid)
  error3 = copyout(&cred->cr_svgid,
      uap->sgid, sizeof(cred->cr_svgid));
 return (error1 ? error1 : error2 ? error2 : error3);
}
