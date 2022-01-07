
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct readlink_args {int count; int buf; int path; } ;


 int AT_FDCWD ;
 int UIO_USERSPACE ;
 int kern_readlinkat (struct thread*,int ,int ,int ,int ,int ,int ) ;

int
sys_readlink(struct thread *td, struct readlink_args *uap)
{

 return (kern_readlinkat(td, AT_FDCWD, uap->path, UIO_USERSPACE,
     uap->buf, UIO_USERSPACE, uap->count));
}
