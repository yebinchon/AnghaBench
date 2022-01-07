
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct symlink_args {int link; int path; } ;


 int AT_FDCWD ;
 int UIO_USERSPACE ;
 int kern_symlinkat (struct thread*,int ,int ,int ,int ) ;

int
sys_symlink(struct thread *td, struct symlink_args *uap)
{

 return (kern_symlinkat(td, uap->path, AT_FDCWD, uap->link,
     UIO_USERSPACE));
}
