
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int uio_iovcnt; size_t uio_resid; struct thread* uio_td; int uio_rw; int uio_segflg; scalar_t__ uio_offset; struct iovec* uio_iov; } ;
struct thread {size_t* td_retval; } ;
struct iovec {size_t iov_len; void* iov_base; } ;


 int EINVAL ;
 unsigned int GRND_NONBLOCK ;
 unsigned int GRND_VALIDFLAGS ;
 size_t IOSIZE_MAX ;
 int UIO_READ ;
 int UIO_USERSPACE ;
 int read_random_uio (struct uio*,int) ;

__attribute__((used)) static int
kern_getrandom(struct thread *td, void *user_buf, size_t buflen,
    unsigned int flags)
{
 struct uio auio;
 struct iovec aiov;
 int error;

 if ((flags & ~GRND_VALIDFLAGS) != 0)
  return (EINVAL);
 if (buflen > IOSIZE_MAX)
  return (EINVAL);

 if (buflen == 0) {
  td->td_retval[0] = 0;
  return (0);
 }

 aiov.iov_base = user_buf;
 aiov.iov_len = buflen;
 auio.uio_iov = &aiov;
 auio.uio_iovcnt = 1;
 auio.uio_offset = 0;
 auio.uio_resid = buflen;
 auio.uio_segflg = UIO_USERSPACE;
 auio.uio_rw = UIO_READ;
 auio.uio_td = td;

 error = read_random_uio(&auio, (flags & GRND_NONBLOCK) != 0);
 if (error == 0)
  td->td_retval[0] = buflen - auio.uio_resid;
 return (error);
}
