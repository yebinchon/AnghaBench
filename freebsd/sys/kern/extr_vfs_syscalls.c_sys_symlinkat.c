
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct symlinkat_args {int path2; int fd; int path1; } ;


 int UIO_USERSPACE ;
 int kern_symlinkat (struct thread*,int ,int ,int ,int ) ;

int
sys_symlinkat(struct thread *td, struct symlinkat_args *uap)
{

 return (kern_symlinkat(td, uap->path1, uap->fd, uap->path2,
     UIO_USERSPACE));
}
