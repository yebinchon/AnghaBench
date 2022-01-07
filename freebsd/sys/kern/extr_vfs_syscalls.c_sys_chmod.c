
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct chmod_args {int mode; int path; } ;


 int AT_FDCWD ;
 int UIO_USERSPACE ;
 int kern_fchmodat (struct thread*,int ,int ,int ,int ,int ) ;

int
sys_chmod(struct thread *td, struct chmod_args *uap)
{

 return (kern_fchmodat(td, AT_FDCWD, uap->path, UIO_USERSPACE,
     uap->mode, 0));
}
