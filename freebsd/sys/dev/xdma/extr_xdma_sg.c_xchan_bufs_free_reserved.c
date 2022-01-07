
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int xr_num; int vmem; struct xdma_request* xr_mem; } ;
typedef TYPE_2__ xdma_channel_t ;
typedef scalar_t__ vm_size_t ;
struct TYPE_4__ {scalar_t__ size; scalar_t__ paddr; scalar_t__ vaddr; } ;
struct xdma_request {TYPE_1__ buf; } ;


 int kva_free (scalar_t__,scalar_t__) ;
 int pmap_kremove_device (scalar_t__,scalar_t__) ;
 int vmem_free (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
xchan_bufs_free_reserved(xdma_channel_t *xchan)
{
 struct xdma_request *xr;
 vm_size_t size;
 int i;

 for (i = 0; i < xchan->xr_num; i++) {
  xr = &xchan->xr_mem[i];
  size = xr->buf.size;
  if (xr->buf.vaddr) {
   pmap_kremove_device(xr->buf.vaddr, size);
   kva_free(xr->buf.vaddr, size);
   xr->buf.vaddr = 0;
  }
  if (xr->buf.paddr) {
   vmem_free(xchan->vmem, xr->buf.paddr, size);
   xr->buf.paddr = 0;
  }
  xr->buf.size = 0;
 }
}
