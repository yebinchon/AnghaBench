
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio {scalar_t__ uio_segflg; scalar_t__ uio_iovcnt; long uio_offset; TYPE_1__* uio_iov; scalar_t__ uio_resid; } ;
struct mbchain {int dummy; } ;
struct TYPE_2__ {long iov_len; char* iov_base; } ;


 int EFBIG ;
 int MB_MSYSTEM ;
 int MB_MUSER ;
 scalar_t__ UIO_SYSSPACE ;
 int mb_put_mem (struct mbchain*,char*,long,int) ;

int
mb_put_uio(struct mbchain *mbp, struct uio *uiop, int size)
{
 long left;
 int mtype, error;

 mtype = (uiop->uio_segflg == UIO_SYSSPACE) ? MB_MSYSTEM : MB_MUSER;

 while (size > 0 && uiop->uio_resid) {
  if (uiop->uio_iovcnt <= 0 || uiop->uio_iov == ((void*)0))
   return (EFBIG);
  left = uiop->uio_iov->iov_len;
  if (left == 0) {
   uiop->uio_iov++;
   uiop->uio_iovcnt--;
   continue;
  }
  if (left > size)
   left = size;
  error = mb_put_mem(mbp, uiop->uio_iov->iov_base, left, mtype);
  if (error)
   return (error);
  uiop->uio_offset += left;
  uiop->uio_resid -= left;
  uiop->uio_iov->iov_base =
      (char *)uiop->uio_iov->iov_base + left;
  uiop->uio_iov->iov_len -= left;
  size -= left;
 }
 return (0);
}
