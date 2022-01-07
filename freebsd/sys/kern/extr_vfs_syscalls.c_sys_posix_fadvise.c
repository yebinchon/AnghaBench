
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct posix_fadvise_args {int advice; int len; int offset; int fd; } ;


 int kern_posix_error (struct thread*,int) ;
 int kern_posix_fadvise (struct thread*,int ,int ,int ,int ) ;

int
sys_posix_fadvise(struct thread *td, struct posix_fadvise_args *uap)
{
 int error;

 error = kern_posix_fadvise(td, uap->fd, uap->offset, uap->len,
     uap->advice);
 return (kern_posix_error(td, error));
}
