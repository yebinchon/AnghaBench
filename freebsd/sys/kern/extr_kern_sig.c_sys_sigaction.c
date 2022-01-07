
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct sigaction_args {int * oact; int sig; int * act; } ;
struct sigaction {int dummy; } ;
typedef int oact ;
typedef int act ;


 int copyin (int *,struct sigaction*,int) ;
 int copyout (struct sigaction*,int *,int) ;
 int kern_sigaction (struct thread*,int ,struct sigaction*,struct sigaction*,int ) ;

int
sys_sigaction(struct thread *td, struct sigaction_args *uap)
{
 struct sigaction act, oact;
 struct sigaction *actp, *oactp;
 int error;

 actp = (uap->act != ((void*)0)) ? &act : ((void*)0);
 oactp = (uap->oact != ((void*)0)) ? &oact : ((void*)0);
 if (actp) {
  error = copyin(uap->act, actp, sizeof(act));
  if (error)
   return (error);
 }
 error = kern_sigaction(td, uap->sig, actp, oactp, 0);
 if (oactp && !error)
  error = copyout(oactp, uap->oact, sizeof(oact));
 return (error);
}
