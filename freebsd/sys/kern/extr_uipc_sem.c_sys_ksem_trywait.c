
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct ksem_trywait_args {int id; } ;


 int kern_sem_wait (struct thread*,int ,int,int *) ;

int
sys_ksem_trywait(struct thread *td, struct ksem_trywait_args *uap)
{

 return (kern_sem_wait(td, uap->id, 1, ((void*)0)));
}
