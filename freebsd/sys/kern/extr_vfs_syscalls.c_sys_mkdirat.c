
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct mkdirat_args {int mode; int path; int fd; } ;


 int UIO_USERSPACE ;
 int kern_mkdirat (struct thread*,int ,int ,int ,int ) ;

int
sys_mkdirat(struct thread *td, struct mkdirat_args *uap)
{

 return (kern_mkdirat(td, uap->fd, uap->path, UIO_USERSPACE, uap->mode));
}
