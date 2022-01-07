
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct pipe2_args {int flags; int fildes; } ;


 int EINVAL ;
 int O_CLOEXEC ;
 int O_NONBLOCK ;
 int copyout (int*,int ,int) ;
 int kern_close (struct thread*,int) ;
 int kern_pipe (struct thread*,int*,int,int *,int *) ;

int
sys_pipe2(struct thread *td, struct pipe2_args *uap)
{
 int error, fildes[2];

 if (uap->flags & ~(O_CLOEXEC | O_NONBLOCK))
  return (EINVAL);
 error = kern_pipe(td, fildes, uap->flags, ((void*)0), ((void*)0));
 if (error)
  return (error);
 error = copyout(fildes, uap->fildes, 2 * sizeof(int));
 if (error) {
  (void)kern_close(td, fildes[0]);
  (void)kern_close(td, fildes[1]);
 }
 return (error);
}
