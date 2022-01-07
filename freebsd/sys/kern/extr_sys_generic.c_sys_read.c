
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int uio_iovcnt; scalar_t__ uio_resid; int uio_segflg; struct iovec* uio_iov; } ;
struct thread {int dummy; } ;
struct read_args {scalar_t__ nbyte; int fd; int buf; } ;
struct iovec {scalar_t__ iov_len; int iov_base; } ;


 int EINVAL ;
 scalar_t__ IOSIZE_MAX ;
 int UIO_USERSPACE ;
 int kern_readv (struct thread*,int ,struct uio*) ;

int
sys_read(struct thread *td, struct read_args *uap)
{
 struct uio auio;
 struct iovec aiov;
 int error;

 if (uap->nbyte > IOSIZE_MAX)
  return (EINVAL);
 aiov.iov_base = uap->buf;
 aiov.iov_len = uap->nbyte;
 auio.uio_iov = &aiov;
 auio.uio_iovcnt = 1;
 auio.uio_resid = uap->nbyte;
 auio.uio_segflg = UIO_USERSPACE;
 error = kern_readv(td, uap->fd, &auio);
 return (error);
}
