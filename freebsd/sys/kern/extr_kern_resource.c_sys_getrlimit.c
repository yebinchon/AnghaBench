
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct rlimit {int dummy; } ;
struct __getrlimit_args {scalar_t__ which; int rlp; } ;


 int EINVAL ;
 scalar_t__ RLIM_NLIMITS ;
 int copyout (struct rlimit*,int ,int) ;
 int lim_rlimit (struct thread*,scalar_t__,struct rlimit*) ;

int
sys_getrlimit(struct thread *td, struct __getrlimit_args *uap)
{
 struct rlimit rlim;
 int error;

 if (uap->which >= RLIM_NLIMITS)
  return (EINVAL);
 lim_rlimit(td, uap->which, &rlim);
 error = copyout(&rlim, uap->rlp, sizeof(struct rlimit));
 return (error);
}
