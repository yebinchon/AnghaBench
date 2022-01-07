
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct pwrite_args {int offset; int nbyte; int buf; int fd; } ;


 int kern_pwrite (struct thread*,int ,int ,int ,int ) ;

int
sys_pwrite(struct thread *td, struct pwrite_args *uap)
{

 return (kern_pwrite(td, uap->fd, uap->buf, uap->nbyte, uap->offset));
}
