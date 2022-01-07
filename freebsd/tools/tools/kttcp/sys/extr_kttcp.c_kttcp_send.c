
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {scalar_t__ uio_offset; void* uio_resid; void* iov_len; int uio_segflg; struct uio* uio_iov; } ;
struct timeval {int dummy; } ;
struct thread {int dummy; } ;
struct socket {int dummy; } ;
struct kttcp_io_args {unsigned long long kio_totalsize; unsigned long long kio_bytesdone; int kio_elapsed; int kio_socket; } ;
struct iovec {scalar_t__ uio_offset; void* uio_resid; void* iov_len; int uio_segflg; struct iovec* uio_iov; } ;
struct file {int f_flag; scalar_t__ f_type; scalar_t__ f_data; } ;
typedef int auio ;
typedef int aiov ;


 scalar_t__ DTYPE_SOCKET ;
 int EBADF ;
 int EFTYPE ;
 int FWRITE ;
 void* MIN (unsigned long long,unsigned long long) ;
 int UIO_NOCOPY ;
 int bzero (struct uio*,int) ;
 int fdrop (struct file*,struct thread*) ;
 int fget (struct thread*,int ,struct file**) ;
 int microtime (struct timeval*) ;
 void* nbyte ;
 int sosend (struct socket*,int *,struct uio*,int *,int *,int ,struct thread*) ;
 int timersub (struct timeval*,struct timeval*,int *) ;

__attribute__((used)) static int
kttcp_send(struct thread *td, struct kttcp_io_args *kio)
{
 struct file *fp;
 int error;
 struct timeval t0, t1;
 unsigned long long len = 0;
 struct uio auio;
 struct iovec aiov;

 bzero(&aiov, sizeof(aiov));
 bzero(&auio, sizeof(auio));
 auio.uio_iov = &aiov;
 auio.uio_segflg = UIO_NOCOPY;

 error = fget(td, kio->kio_socket, &fp);
 if (error != 0)
  return error;

 if ((fp->f_flag & FWRITE) == 0) {
  fdrop(fp, td);
  return EBADF;
 }
 if (fp->f_type == DTYPE_SOCKET) {
  len = kio->kio_totalsize;
  microtime(&t0);
  do {
   nbyte = MIN(len, (unsigned long long)nbyte);
   aiov.iov_len = nbyte;
   auio.uio_resid = nbyte;
   auio.uio_offset = 0;
   error = sosend((struct socket *)fp->f_data, ((void*)0),
           &auio, ((void*)0), ((void*)0), 0, td);
   len -= auio.uio_offset;
  } while (error == 0 && len != 0);
  microtime(&t1);
 } else
  error = EFTYPE;
 fdrop(fp, td);
 if (error != 0)
  return error;
 timersub(&t1, &t0, &kio->kio_elapsed);

 kio->kio_bytesdone = kio->kio_totalsize - len;

 return 0;
}
