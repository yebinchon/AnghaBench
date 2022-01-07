
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct getdirentries_args {int * basep; int count; int buf; int fd; } ;
typedef int off_t ;


 int UIO_USERSPACE ;
 int copyout (int *,int *,int) ;
 int kern_getdirentries (struct thread*,int ,int ,int ,int *,int *,int ) ;

int
sys_getdirentries(struct thread *td, struct getdirentries_args *uap)
{
 off_t base;
 int error;

 error = kern_getdirentries(td, uap->fd, uap->buf, uap->count, &base,
     ((void*)0), UIO_USERSPACE);
 if (error != 0)
  return (error);
 if (uap->basep != ((void*)0))
  error = copyout(&base, uap->basep, sizeof(off_t));
 return (error);
}
