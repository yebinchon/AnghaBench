
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct mmap_args {int pos; int fd; int flags; int prot; int len; scalar_t__ addr; } ;


 int kern_mmap (struct thread*,uintptr_t,int ,int ,int ,int ,int ) ;

int
sys_mmap(struct thread *td, struct mmap_args *uap)
{

 return (kern_mmap(td, (uintptr_t)uap->addr, uap->len, uap->prot,
     uap->flags, uap->fd, uap->pos));
}
