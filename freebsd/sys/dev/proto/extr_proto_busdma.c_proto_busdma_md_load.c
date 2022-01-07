
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct uio {int uio_iovcnt; struct thread* uio_td; int uio_rw; int uio_segflg; int uio_resid; scalar_t__ uio_offset; struct iovec* uio_iov; } ;
struct thread {TYPE_1__* td_proc; } ;
struct proto_md {int physaddr; int bd_map; int bd_tag; } ;
struct TYPE_5__ {int phys_nsegs; int phys_addr; scalar_t__ virt_addr; int virt_size; } ;
struct TYPE_6__ {TYPE_2__ md; } ;
struct proto_ioc_busdma {TYPE_3__ u; } ;
struct proto_callback_bundle {struct proto_ioc_busdma* ioc; struct proto_md* md; struct proto_busdma* busdma; } ;
struct proto_busdma {int dummy; } ;
struct iovec {int iov_len; void* iov_base; } ;
typedef int pmap_t ;
struct TYPE_4__ {int p_vmspace; } ;


 int BUS_DMA_NOWAIT ;
 int UIO_READ ;
 int UIO_USERSPACE ;
 int bus_dmamap_load_uio (int ,int ,struct uio*,int ,struct proto_callback_bundle*,int ) ;
 int pmap_extract (int ,scalar_t__) ;
 int proto_busdma_md_load_callback ;
 int vmspace_pmap (int ) ;

__attribute__((used)) static int
proto_busdma_md_load(struct proto_busdma *busdma, struct proto_md *md,
    struct proto_ioc_busdma *ioc, struct thread *td)
{
 struct proto_callback_bundle pcb;
 struct iovec iov;
 struct uio uio;
 pmap_t pmap;
 int error;

 iov.iov_base = (void *)(uintptr_t)ioc->u.md.virt_addr;
 iov.iov_len = ioc->u.md.virt_size;
 uio.uio_iov = &iov;
 uio.uio_iovcnt = 1;
 uio.uio_offset = 0;
 uio.uio_resid = iov.iov_len;
 uio.uio_segflg = UIO_USERSPACE;
 uio.uio_rw = UIO_READ;
 uio.uio_td = td;

 pcb.busdma = busdma;
 pcb.md = md;
 pcb.ioc = ioc;
 error = bus_dmamap_load_uio(md->bd_tag, md->bd_map, &uio,
     proto_busdma_md_load_callback, &pcb, BUS_DMA_NOWAIT);
 if (error)
  return (error);


 pmap = vmspace_pmap(td->td_proc->p_vmspace);
 md->physaddr = pmap_extract(pmap, ioc->u.md.virt_addr);
 ioc->u.md.phys_nsegs = 1;
 ioc->u.md.phys_addr = md->physaddr;
 return (0);
}
