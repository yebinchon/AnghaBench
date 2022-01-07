
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct rlimit {int dummy; } ;
struct __setrlimit_args {int which; int rlp; } ;


 int copyin (int ,struct rlimit*,int) ;
 int kern_setrlimit (struct thread*,int ,struct rlimit*) ;

int
sys_setrlimit(struct thread *td, struct __setrlimit_args *uap)
{
 struct rlimit alim;
 int error;

 if ((error = copyin(uap->rlp, &alim, sizeof(struct rlimit))))
  return (error);
 error = kern_setrlimit(td, uap->which, &alim);
 return (error);
}
