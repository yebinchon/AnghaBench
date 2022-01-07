
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct munlock_args {int len; scalar_t__ addr; } ;


 int kern_munlock (struct thread*,uintptr_t,int ) ;

int
sys_munlock(struct thread *td, struct munlock_args *uap)
{

 return (kern_munlock(td, (uintptr_t)uap->addr, uap->len));
}
