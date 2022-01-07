
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct rmdir_args {int path; } ;


 int AT_FDCWD ;
 int FD_NONE ;
 int UIO_USERSPACE ;
 int kern_frmdirat (struct thread*,int ,int ,int ,int ,int ) ;

int
sys_rmdir(struct thread *td, struct rmdir_args *uap)
{

 return (kern_frmdirat(td, AT_FDCWD, uap->path, FD_NONE, UIO_USERSPACE,
     0));
}
