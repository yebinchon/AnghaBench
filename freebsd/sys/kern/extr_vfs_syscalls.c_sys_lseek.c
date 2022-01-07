
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct lseek_args {int whence; int offset; int fd; } ;


 int kern_lseek (struct thread*,int ,int ,int ) ;

int
sys_lseek(struct thread *td, struct lseek_args *uap)
{

 return (kern_lseek(td, uap->fd, uap->offset, uap->whence));
}
