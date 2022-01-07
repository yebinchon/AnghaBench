
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utimes_args {int tptr; int path; } ;
struct thread {int dummy; } ;


 int AT_FDCWD ;
 int UIO_USERSPACE ;
 int kern_utimesat (struct thread*,int ,int ,int ,int ,int ) ;

int
sys_utimes(struct thread *td, struct utimes_args *uap)
{

 return (kern_utimesat(td, AT_FDCWD, uap->path, UIO_USERSPACE,
     uap->tptr, UIO_USERSPACE));
}
