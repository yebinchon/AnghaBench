
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ucred {int cr_ngroups; int cr_groups; } ;
struct thread {int* td_retval; struct ucred* td_ucred; } ;
struct getgroups_args {scalar_t__ gidsetsize; int gidset; } ;
typedef int gid_t ;


 int EINVAL ;
 int copyout (int ,int ,int) ;

int
sys_getgroups(struct thread *td, struct getgroups_args *uap)
{
 struct ucred *cred;
 u_int ngrp;
 int error;

 cred = td->td_ucred;
 ngrp = cred->cr_ngroups;

 if (uap->gidsetsize == 0) {
  error = 0;
  goto out;
 }
 if (uap->gidsetsize < ngrp)
  return (EINVAL);

 error = copyout(cred->cr_groups, uap->gidset, ngrp * sizeof(gid_t));
out:
 td->td_retval[0] = ngrp;
 return (error);
}
