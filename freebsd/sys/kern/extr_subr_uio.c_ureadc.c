
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {scalar_t__ uio_iovcnt; scalar_t__ uio_resid; int uio_segflg; int uio_offset; struct iovec* uio_iov; } ;
struct iovec {scalar_t__ iov_len; char* iov_base; } ;


 int EFAULT ;



 int WARN_GIANTOK ;
 int WARN_SLEEPOK ;
 int WITNESS_WARN (int,int *,char*) ;
 int panic (char*) ;
 int subyte (char*,int) ;

int
ureadc(int c, struct uio *uio)
{
 struct iovec *iov;
 char *iov_base;

 WITNESS_WARN(WARN_GIANTOK | WARN_SLEEPOK, ((void*)0),
     "Calling ureadc()");

again:
 if (uio->uio_iovcnt == 0 || uio->uio_resid == 0)
  panic("ureadc");
 iov = uio->uio_iov;
 if (iov->iov_len == 0) {
  uio->uio_iovcnt--;
  uio->uio_iov++;
  goto again;
 }
 switch (uio->uio_segflg) {

 case 128:
  if (subyte(iov->iov_base, c) < 0)
   return (EFAULT);
  break;

 case 129:
  iov_base = iov->iov_base;
  *iov_base = c;
  break;

 case 130:
  break;
 }
 iov->iov_base = (char *)iov->iov_base + 1;
 iov->iov_len--;
 uio->uio_resid--;
 uio->uio_offset++;
 return (0);
}
