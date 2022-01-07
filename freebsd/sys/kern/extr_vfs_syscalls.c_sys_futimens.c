
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct futimens_args {int times; int fd; } ;


 int UIO_USERSPACE ;
 int kern_futimens (struct thread*,int ,int ,int ) ;

int
sys_futimens(struct thread *td, struct futimens_args *uap)
{

 return (kern_futimens(td, uap->fd, uap->times, UIO_USERSPACE));
}
