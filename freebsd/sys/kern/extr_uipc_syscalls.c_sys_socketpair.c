
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct socketpair_args {int rsv; int protocol; int type; int domain; } ;


 int copyout (int*,int ,int) ;
 int kern_close (struct thread*,int) ;
 int kern_socketpair (struct thread*,int ,int ,int ,int*) ;

int
sys_socketpair(struct thread *td, struct socketpair_args *uap)
{
 int error, sv[2];

 error = kern_socketpair(td, uap->domain, uap->type,
     uap->protocol, sv);
 if (error != 0)
  return (error);
 error = copyout(sv, uap->rsv, 2 * sizeof(int));
 if (error != 0) {
  (void)kern_close(td, sv[0]);
  (void)kern_close(td, sv[1]);
 }
 return (error);
}
