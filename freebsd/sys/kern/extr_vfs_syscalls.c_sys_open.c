
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct open_args {int mode; int flags; int path; } ;


 int AT_FDCWD ;
 int UIO_USERSPACE ;
 int kern_openat (struct thread*,int ,int ,int ,int ,int ) ;

int
sys_open(struct thread *td, struct open_args *uap)
{

 return (kern_openat(td, AT_FDCWD, uap->path, UIO_USERSPACE,
     uap->flags, uap->mode));
}
