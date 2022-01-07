
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct futimesat_args {int times; int path; int fd; } ;


 int UIO_USERSPACE ;
 int kern_utimesat (struct thread*,int ,int ,int ,int ,int ) ;

int
sys_futimesat(struct thread *td, struct futimesat_args *uap)
{

 return (kern_utimesat(td, uap->fd, uap->path, UIO_USERSPACE,
     uap->times, UIO_USERSPACE));
}
