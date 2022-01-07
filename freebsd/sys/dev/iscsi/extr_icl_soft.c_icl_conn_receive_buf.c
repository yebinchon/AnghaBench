
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uio ;
struct uio {int uio_iovcnt; size_t uio_resid; int uio_rw; int uio_segflg; scalar_t__ uio_offset; struct iovec* uio_iov; } ;
struct socket {int dummy; } ;
struct iovec {size_t iov_len; void* iov_base; } ;
struct icl_conn {struct socket* ic_socket; } ;


 int ICL_DEBUG (char*,...) ;
 int MSG_DONTWAIT ;
 int UIO_READ ;
 int UIO_SYSSPACE ;
 int memset (struct uio*,int ,int) ;
 int soreceive (struct socket*,int *,struct uio*,int *,int *,int*) ;

__attribute__((used)) static int
icl_conn_receive_buf(struct icl_conn *ic, void *buf, size_t len)
{
 struct iovec iov[1];
 struct uio uio;
 struct socket *so;
 int error, flags;

 so = ic->ic_socket;

 memset(&uio, 0, sizeof(uio));
 iov[0].iov_base = buf;
 iov[0].iov_len = len;
 uio.uio_iov = iov;
 uio.uio_iovcnt = 1;
 uio.uio_offset = 0;
 uio.uio_resid = len;
 uio.uio_segflg = UIO_SYSSPACE;
 uio.uio_rw = UIO_READ;

 flags = MSG_DONTWAIT;
 error = soreceive(so, ((void*)0), &uio, ((void*)0), ((void*)0), &flags);
 if (error != 0) {
  ICL_DEBUG("soreceive error %d", error);
  return (-1);
 }
 if (uio.uio_resid != 0) {
  ICL_DEBUG("short read");
  return (-1);
 }

 return (0);
}
