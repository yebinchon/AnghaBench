
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct mkfifo_args {int mode; int path; } ;


 int AT_FDCWD ;
 int UIO_USERSPACE ;
 int kern_mkfifoat (struct thread*,int ,int ,int ,int ) ;

int
sys_mkfifo(struct thread *td, struct mkfifo_args *uap)
{

 return (kern_mkfifoat(td, AT_FDCWD, uap->path, UIO_USERSPACE,
     uap->mode));
}
