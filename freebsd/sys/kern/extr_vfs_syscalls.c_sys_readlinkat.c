
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct readlinkat_args {int bufsize; int buf; int path; int fd; } ;


 int UIO_USERSPACE ;
 int kern_readlinkat (struct thread*,int ,int ,int ,int ,int ,int ) ;

int
sys_readlinkat(struct thread *td, struct readlinkat_args *uap)
{

 return (kern_readlinkat(td, uap->fd, uap->path, UIO_USERSPACE,
     uap->buf, UIO_USERSPACE, uap->bufsize));
}
