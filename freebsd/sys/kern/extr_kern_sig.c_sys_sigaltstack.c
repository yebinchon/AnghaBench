
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct sigaltstack_args {int * oss; int * ss; } ;
typedef int stack_t ;
typedef int ss ;


 int copyin (int *,int *,int) ;
 int copyout (int *,int *,int) ;
 int kern_sigaltstack (struct thread*,int *,int *) ;

int
sys_sigaltstack(struct thread *td, struct sigaltstack_args *uap)
{
 stack_t ss, oss;
 int error;

 if (uap->ss != ((void*)0)) {
  error = copyin(uap->ss, &ss, sizeof(ss));
  if (error)
   return (error);
 }
 error = kern_sigaltstack(td, (uap->ss != ((void*)0)) ? &ss : ((void*)0),
     (uap->oss != ((void*)0)) ? &oss : ((void*)0));
 if (error)
  return (error);
 if (uap->oss != ((void*)0))
  error = copyout(&oss, uap->oss, sizeof(stack_t));
 return (error);
}
