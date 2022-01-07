
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct kqueue_args {int dummy; } ;


 int kern_kqueue (struct thread*,int ,int *) ;

int
sys_kqueue(struct thread *td, struct kqueue_args *uap)
{

 return (kern_kqueue(td, 0, ((void*)0)));
}
