
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {size_t* td_retval; } ;
struct getfsstat_args {scalar_t__ bufsize; int mode; int buf; } ;


 int EINVAL ;
 scalar_t__ SIZE_MAX ;
 int UIO_USERSPACE ;
 int kern_getfsstat (struct thread*,int *,scalar_t__,size_t*,int ,int ) ;

int
sys_getfsstat(struct thread *td, struct getfsstat_args *uap)
{
 size_t count;
 int error;

 if (uap->bufsize < 0 || uap->bufsize > SIZE_MAX)
  return (EINVAL);
 error = kern_getfsstat(td, &uap->buf, uap->bufsize, &count,
     UIO_USERSPACE, uap->mode);
 if (error == 0)
  td->td_retval[0] = count;
 return (error);
}
