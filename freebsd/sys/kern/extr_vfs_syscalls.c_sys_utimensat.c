
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utimensat_args {int flag; int times; int path; int fd; } ;
struct thread {int dummy; } ;


 int UIO_USERSPACE ;
 int kern_utimensat (struct thread*,int ,int ,int ,int ,int ,int ) ;

int
sys_utimensat(struct thread *td, struct utimensat_args *uap)
{

 return (kern_utimensat(td, uap->fd, uap->path, UIO_USERSPACE,
     uap->times, UIO_USERSPACE, uap->flag));
}
