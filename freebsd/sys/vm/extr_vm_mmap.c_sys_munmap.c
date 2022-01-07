
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct munmap_args {int len; scalar_t__ addr; } ;


 int kern_munmap (struct thread*,uintptr_t,int ) ;

int
sys_munmap(struct thread *td, struct munmap_args *uap)
{

 return (kern_munmap(td, (uintptr_t)uap->addr, uap->len));
}
