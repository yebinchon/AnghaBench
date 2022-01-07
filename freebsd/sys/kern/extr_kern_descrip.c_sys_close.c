
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct close_args {int fd; } ;


 int kern_close (struct thread*,int ) ;

int
sys_close(struct thread *td, struct close_args *uap)
{

 return (kern_close(td, uap->fd));
}
