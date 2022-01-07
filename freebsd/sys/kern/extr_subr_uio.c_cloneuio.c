
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int uio_iovcnt; struct iovec* uio_iov; } ;
struct iovec {int dummy; } ;


 int M_IOV ;
 int M_WAITOK ;
 int bcopy (struct iovec*,struct iovec*,int) ;
 struct uio* malloc (int,int ,int ) ;

struct uio *
cloneuio(struct uio *uiop)
{
 struct uio *uio;
 int iovlen;

 iovlen = uiop->uio_iovcnt * sizeof (struct iovec);
 uio = malloc(iovlen + sizeof *uio, M_IOV, M_WAITOK);
 *uio = *uiop;
 uio->uio_iov = (struct iovec *)(uio + 1);
 bcopy(uiop->uio_iov, uio->uio_iov, iovlen);
 return (uio);
}
