
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct madvise_args {int behav; int len; scalar_t__ addr; } ;


 int kern_madvise (struct thread*,uintptr_t,int ,int ) ;

int
sys_madvise(struct thread *td, struct madvise_args *uap)
{

 return (kern_madvise(td, (uintptr_t)uap->addr, uap->len, uap->behav));
}
