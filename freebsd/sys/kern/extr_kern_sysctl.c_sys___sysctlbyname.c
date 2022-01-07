
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct __sysctlbyname_args {int * oldlenp; int newlen; int new; int old; int namelen; int name; } ;
typedef int rv ;


 int copyout (size_t*,int *,int) ;
 int kern___sysctlbyname (struct thread*,int ,int ,int ,int *,int ,int ,size_t*,int ,int ) ;

int
sys___sysctlbyname(struct thread *td, struct __sysctlbyname_args *uap)
{
 size_t rv;
 int error;

 error = kern___sysctlbyname(td, uap->name, uap->namelen, uap->old,
     uap->oldlenp, uap->new, uap->newlen, &rv, 0, 0);
 if (error != 0)
  return (error);
 if (uap->oldlenp != ((void*)0))
  error = copyout(&rv, uap->oldlenp, sizeof(rv));

 return (error);
}
