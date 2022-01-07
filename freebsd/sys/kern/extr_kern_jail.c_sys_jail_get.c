
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int uio_iov; } ;
struct thread {int dummy; } ;
struct jail_get_args {int iovcnt; int iovp; int flags; } ;
struct iovec {int dummy; } ;


 int EINVAL ;
 int M_IOV ;
 int copyinuio (int ,int,struct uio**) ;
 int copyout (int ,int ,int) ;
 int free (struct uio*,int ) ;
 int kern_jail_get (struct thread*,struct uio*,int ) ;

int
sys_jail_get(struct thread *td, struct jail_get_args *uap)
{
 struct uio *auio;
 int error;


 if (uap->iovcnt & 1)
  return (EINVAL);

 error = copyinuio(uap->iovp, uap->iovcnt, &auio);
 if (error)
  return (error);
 error = kern_jail_get(td, auio, uap->flags);
 if (error == 0)
  error = copyout(auio->uio_iov, uap->iovp,
      uap->iovcnt * sizeof (struct iovec));
 free(auio, M_IOV);
 return (error);
}
