
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct futimes_args {int tptr; int fd; } ;


 int UIO_USERSPACE ;
 int kern_futimes (struct thread*,int ,int ,int ) ;

int
sys_futimes(struct thread *td, struct futimes_args *uap)
{

 return (kern_futimes(td, uap->fd, uap->tptr, UIO_USERSPACE));
}
