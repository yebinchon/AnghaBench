
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct mincore_args {int vec; int len; scalar_t__ addr; } ;


 int kern_mincore (struct thread*,uintptr_t,int ,int ) ;

int
sys_mincore(struct thread *td, struct mincore_args *uap)
{

 return (kern_mincore(td, (uintptr_t)uap->addr, uap->len, uap->vec));
}
