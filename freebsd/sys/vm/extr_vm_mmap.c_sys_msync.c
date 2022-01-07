
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct msync_args {int flags; int len; scalar_t__ addr; } ;


 int kern_msync (struct thread*,uintptr_t,int ,int ) ;

int
sys_msync(struct thread *td, struct msync_args *uap)
{

 return (kern_msync(td, (uintptr_t)uap->addr, uap->len, uap->flags));
}
