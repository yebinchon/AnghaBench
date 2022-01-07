
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct sigprocmask_args {int * oset; int how; int * set; } ;
typedef int sigset_t ;
typedef int set ;
typedef int oset ;


 int copyin (int *,int *,int) ;
 int copyout (int *,int *,int) ;
 int kern_sigprocmask (struct thread*,int ,int *,int *,int ) ;

int
sys_sigprocmask(struct thread *td, struct sigprocmask_args *uap)
{
 sigset_t set, oset;
 sigset_t *setp, *osetp;
 int error;

 setp = (uap->set != ((void*)0)) ? &set : ((void*)0);
 osetp = (uap->oset != ((void*)0)) ? &oset : ((void*)0);
 if (setp) {
  error = copyin(uap->set, setp, sizeof(set));
  if (error)
   return (error);
 }
 error = kern_sigprocmask(td, uap->how, setp, osetp, 0);
 if (osetp && !error) {
  error = copyout(osetp, uap->oset, sizeof(oset));
 }
 return (error);
}
