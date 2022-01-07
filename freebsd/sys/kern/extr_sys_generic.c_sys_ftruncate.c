
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct ftruncate_args {int length; int fd; } ;


 int kern_ftruncate (struct thread*,int ,int ) ;

int
sys_ftruncate(struct thread *td, struct ftruncate_args *uap)
{

 return (kern_ftruncate(td, uap->fd, uap->length));
}
