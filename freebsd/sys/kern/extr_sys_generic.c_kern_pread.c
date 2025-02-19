
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int uio_iovcnt; size_t uio_resid; int uio_segflg; struct iovec* uio_iov; } ;
struct thread {int dummy; } ;
struct iovec {size_t iov_len; void* iov_base; } ;
typedef int off_t ;


 int EINVAL ;
 size_t IOSIZE_MAX ;
 int UIO_USERSPACE ;
 int kern_preadv (struct thread*,int,struct uio*,int ) ;

int
kern_pread(struct thread *td, int fd, void *buf, size_t nbyte, off_t offset)
{
 struct uio auio;
 struct iovec aiov;
 int error;

 if (nbyte > IOSIZE_MAX)
  return (EINVAL);
 aiov.iov_base = buf;
 aiov.iov_len = nbyte;
 auio.uio_iov = &aiov;
 auio.uio_iovcnt = 1;
 auio.uio_resid = nbyte;
 auio.uio_segflg = UIO_USERSPACE;
 error = kern_preadv(td, fd, &auio, offset);
 return (error);
}
