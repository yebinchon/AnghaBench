
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct sysctl_args {int namelen; int oldlenp; int newlen; int new; int old; int name; } ;
typedef int j ;


 int CTL_MAXNAME ;
 int EINVAL ;
 int ENOMEM ;
 int copyin (int ,int**,int) ;
 int copyout (size_t*,int ,int) ;
 int userland_sysctl (struct thread*,int*,int,int ,int ,int ,int ,int ,size_t*,int ) ;

int
sys___sysctl(struct thread *td, struct sysctl_args *uap)
{
 int error, i, name[CTL_MAXNAME];
 size_t j;

 if (uap->namelen > CTL_MAXNAME || uap->namelen < 2)
  return (EINVAL);

  error = copyin(uap->name, &name, uap->namelen * sizeof(int));
  if (error)
  return (error);

 error = userland_sysctl(td, name, uap->namelen,
  uap->old, uap->oldlenp, 0,
  uap->new, uap->newlen, &j, 0);
 if (error && error != ENOMEM)
  return (error);
 if (uap->oldlenp) {
  i = copyout(&j, uap->oldlenp, sizeof(j));
  if (i)
   return (i);
 }
 return (error);
}
