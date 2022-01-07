
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio {int uio_iovcnt; size_t uio_resid; TYPE_1__* uio_iov; struct thread* uio_td; int uio_rw; int uio_segflg; } ;
struct thread {int dummy; } ;
struct csession {int dummy; } ;
struct cryptop_data {TYPE_1__* iovec; struct uio uio; struct csession* cse; } ;
struct TYPE_2__ {size_t iov_len; void* iov_base; } ;


 int M_WAITOK ;
 int M_XDATA ;
 int M_ZERO ;
 int UIO_SYSSPACE ;
 int UIO_WRITE ;
 void* malloc (size_t,int ,int) ;

__attribute__((used)) static struct cryptop_data *
cod_alloc(struct csession *cse, size_t len, struct thread *td)
{
 struct cryptop_data *cod;
 struct uio *uio;

 cod = malloc(sizeof(struct cryptop_data), M_XDATA, M_WAITOK | M_ZERO);

 cod->cse = cse;
 uio = &cod->uio;
 uio->uio_iov = cod->iovec;
 uio->uio_iovcnt = 1;
 uio->uio_resid = len;
 uio->uio_segflg = UIO_SYSSPACE;
 uio->uio_rw = UIO_WRITE;
 uio->uio_td = td;
 uio->uio_iov[0].iov_len = len;
 uio->uio_iov[0].iov_base = malloc(len, M_XDATA, M_WAITOK);
 return (cod);
}
