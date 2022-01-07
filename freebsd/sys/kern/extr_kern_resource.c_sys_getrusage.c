
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct rusage {int dummy; } ;
struct getrusage_args {int rusage; int who; } ;


 int copyout (struct rusage*,int ,int) ;
 int kern_getrusage (struct thread*,int ,struct rusage*) ;

int
sys_getrusage(struct thread *td, struct getrusage_args *uap)
{
 struct rusage ru;
 int error;

 error = kern_getrusage(td, uap->who, &ru);
 if (error == 0)
  error = copyout(&ru, uap->rusage, sizeof(struct rusage));
 return (error);
}
