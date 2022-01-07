
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct mknodat_args {int dev; int mode; int path; int fd; } ;


 int UIO_USERSPACE ;
 int kern_mknodat (struct thread*,int ,int ,int ,int ,int ) ;

int
sys_mknodat(struct thread *td, struct mknodat_args *uap)
{

 return (kern_mknodat(td, uap->fd, uap->path, UIO_USERSPACE, uap->mode,
     uap->dev));
}
