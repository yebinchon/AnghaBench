
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uio {scalar_t__ uio_segflg; scalar_t__ uio_resid; int uio_iovcnt; struct iovec* uio_iov; TYPE_2__* uio_td; } ;
struct iovec {scalar_t__ iov_len; scalar_t__ iov_base; } ;
typedef int pmap_t ;
typedef scalar_t__ caddr_t ;
typedef scalar_t__ bus_size_t ;
typedef int bus_dmamap_t ;
typedef int bus_dma_tag_t ;
struct TYPE_4__ {TYPE_1__* td_proc; } ;
struct TYPE_3__ {int p_vmspace; } ;


 int KASSERT (int ,char*) ;
 scalar_t__ UIO_USERSPACE ;
 int _bus_dmamap_load_buffer (int ,int ,scalar_t__,scalar_t__,int ,int,int *,int*) ;
 int kernel_pmap ;
 int vmspace_pmap (int ) ;

__attribute__((used)) static int
_bus_dmamap_load_uio(bus_dma_tag_t dmat, bus_dmamap_t map, struct uio *uio,
    int *nsegs, int flags)
{
 bus_size_t resid;
 bus_size_t minlen;
 struct iovec *iov;
 pmap_t pmap;
 caddr_t addr;
 int error, i;

 if (uio->uio_segflg == UIO_USERSPACE) {
  KASSERT(uio->uio_td != ((void*)0),
   ("bus_dmamap_load_uio: USERSPACE but no proc"));
  pmap = vmspace_pmap(uio->uio_td->td_proc->p_vmspace);
 } else
  pmap = kernel_pmap;
 resid = uio->uio_resid;
 iov = uio->uio_iov;
 error = 0;

 for (i = 0; i < uio->uio_iovcnt && resid != 0 && !error; i++) {





  addr = (caddr_t) iov[i].iov_base;
  minlen = resid < iov[i].iov_len ? resid : iov[i].iov_len;
  if (minlen > 0) {
   error = _bus_dmamap_load_buffer(dmat, map, addr,
       minlen, pmap, flags, ((void*)0), nsegs);
   resid -= minlen;
  }
 }

 return (error);
}
