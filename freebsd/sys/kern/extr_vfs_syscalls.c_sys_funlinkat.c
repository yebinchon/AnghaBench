
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct funlinkat_args {int flag; int fd; int path; int dfd; } ;


 int UIO_USERSPACE ;
 int kern_funlinkat_ex (struct thread*,int ,int ,int ,int ,int ,int ) ;

int
sys_funlinkat(struct thread *td, struct funlinkat_args *uap)
{

 return (kern_funlinkat_ex(td, uap->dfd, uap->path, uap->fd, uap->flag,
     UIO_USERSPACE, 0));
}
