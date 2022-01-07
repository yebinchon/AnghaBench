
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct pread_args {int offset; int nbyte; int buf; int fd; } ;


 int kern_pread (struct thread*,int ,int ,int ,int ) ;

int
sys_pread(struct thread *td, struct pread_args *uap)
{

 return (kern_pread(td, uap->fd, uap->buf, uap->nbyte, uap->offset));
}
