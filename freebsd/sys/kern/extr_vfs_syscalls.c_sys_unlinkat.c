
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unlinkat_args {int flag; int path; int fd; } ;
struct thread {int dummy; } ;


 int FD_NONE ;
 int UIO_USERSPACE ;
 int kern_funlinkat_ex (struct thread*,int ,int ,int ,int ,int ,int ) ;

int
sys_unlinkat(struct thread *td, struct unlinkat_args *uap)
{

 return (kern_funlinkat_ex(td, uap->fd, uap->path, FD_NONE, uap->flag,
     UIO_USERSPACE, 0));
}
