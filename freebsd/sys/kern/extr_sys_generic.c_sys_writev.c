
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writev_args {int fd; int iovcnt; int iovp; } ;
struct uio {int dummy; } ;
struct thread {int dummy; } ;


 int M_IOV ;
 int copyinuio (int ,int ,struct uio**) ;
 int free (struct uio*,int ) ;
 int kern_writev (struct thread*,int ,struct uio*) ;

int
sys_writev(struct thread *td, struct writev_args *uap)
{
 struct uio *auio;
 int error;

 error = copyinuio(uap->iovp, uap->iovcnt, &auio);
 if (error)
  return (error);
 error = kern_writev(td, uap->fd, auio);
 free(auio, M_IOV);
 return (error);
}
