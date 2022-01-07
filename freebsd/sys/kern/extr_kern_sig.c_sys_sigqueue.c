
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union sigval {int sival_ptr; } ;
struct thread {int dummy; } ;
struct sigqueue_args {int signum; int pid; int value; } ;


 int kern_sigqueue (struct thread*,int ,int ,union sigval*) ;

int
sys_sigqueue(struct thread *td, struct sigqueue_args *uap)
{
 union sigval sv;

 sv.sival_ptr = uap->value;

 return (kern_sigqueue(td, uap->pid, uap->signum, &sv));
}
