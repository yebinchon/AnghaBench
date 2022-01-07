
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int valsize ;
struct thread {int dummy; } ;
struct getsockopt_args {int avalsize; scalar_t__ val; int name; int level; int s; } ;
typedef int socklen_t ;


 int UIO_USERSPACE ;
 int copyin (int ,int *,int) ;
 int copyout (int *,int ,int) ;
 int kern_getsockopt (struct thread*,int ,int ,int ,scalar_t__,int ,int *) ;

int
sys_getsockopt(struct thread *td, struct getsockopt_args *uap)
{
 socklen_t valsize;
 int error;

 if (uap->val) {
  error = copyin(uap->avalsize, &valsize, sizeof (valsize));
  if (error != 0)
   return (error);
 }

 error = kern_getsockopt(td, uap->s, uap->level, uap->name,
     uap->val, UIO_USERSPACE, &valsize);

 if (error == 0)
  error = copyout(&valsize, uap->avalsize, sizeof (valsize));
 return (error);
}
