
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct mprotect_args {int prot; int len; scalar_t__ addr; } ;


 int kern_mprotect (struct thread*,uintptr_t,int ,int ) ;

int
sys_mprotect(struct thread *td, struct mprotect_args *uap)
{

 return (kern_mprotect(td, (uintptr_t)uap->addr, uap->len, uap->prot));
}
