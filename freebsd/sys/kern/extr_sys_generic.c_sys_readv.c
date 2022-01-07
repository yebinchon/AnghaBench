
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int dummy; } ;
struct thread {int dummy; } ;
struct readv_args {int fd; int iovcnt; int iovp; } ;


 int M_IOV ;
 int copyinuio (int ,int ,struct uio**) ;
 int free (struct uio*,int ) ;
 int kern_readv (struct thread*,int ,struct uio*) ;

int
sys_readv(struct thread *td, struct readv_args *uap)
{
 struct uio *auio;
 int error;

 error = copyinuio(uap->iovp, uap->iovcnt, &auio);
 if (error)
  return (error);
 error = kern_readv(td, uap->fd, auio);
 free(auio, M_IOV);
 return (error);
}
