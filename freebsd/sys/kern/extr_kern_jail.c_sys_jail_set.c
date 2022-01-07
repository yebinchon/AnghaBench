
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int dummy; } ;
struct thread {int dummy; } ;
struct jail_set_args {int iovcnt; int flags; int iovp; } ;


 int EINVAL ;
 int M_IOV ;
 int copyinuio (int ,int,struct uio**) ;
 int free (struct uio*,int ) ;
 int kern_jail_set (struct thread*,struct uio*,int ) ;

int
sys_jail_set(struct thread *td, struct jail_set_args *uap)
{
 struct uio *auio;
 int error;


 if (uap->iovcnt & 1)
  return (EINVAL);

 error = copyinuio(uap->iovp, uap->iovcnt, &auio);
 if (error)
  return (error);
 error = kern_jail_set(td, auio, uap->flags);
 free(auio, M_IOV);
 return (error);
}
