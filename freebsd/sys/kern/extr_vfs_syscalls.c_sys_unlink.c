
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unlink_args {int path; } ;
struct thread {int dummy; } ;


 int AT_FDCWD ;
 int FD_NONE ;
 int UIO_USERSPACE ;
 int kern_funlinkat (struct thread*,int ,int ,int ,int ,int ,int ) ;

int
sys_unlink(struct thread *td, struct unlink_args *uap)
{

 return (kern_funlinkat(td, AT_FDCWD, uap->path, FD_NONE, UIO_USERSPACE,
     0, 0));
}
