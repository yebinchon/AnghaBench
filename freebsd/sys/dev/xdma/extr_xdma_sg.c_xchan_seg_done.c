
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int xdma_controller_t ;
struct TYPE_10__ {int caps; int queue_out; int processing; int dma_tag_bufs; int * xdma; } ;
typedef TYPE_2__ xdma_channel_t ;
struct xdma_transfer_status {int transferred; int error; } ;
struct TYPE_9__ {int transferred; int error; } ;
struct xchan_buf {scalar_t__ nsegs_left; scalar_t__ vaddr; int map; } ;
struct xdma_request {scalar_t__ direction; scalar_t__ req_type; TYPE_1__ status; int dst_addr; int src_addr; struct xchan_buf buf; int m; } ;
typedef int bus_addr_t ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int QUEUE_OUT_LOCK (TYPE_2__*) ;
 int QUEUE_OUT_UNLOCK (TYPE_2__*) ;
 int QUEUE_PROC_LOCK (TYPE_2__*) ;
 int QUEUE_PROC_UNLOCK (TYPE_2__*) ;
 struct xdma_request* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct xdma_request*,int ) ;
 int TAILQ_REMOVE (int *,struct xdma_request*,int ) ;
 int XCHAN_CAP_BOUNCE ;
 int XCHAN_CAP_BUSDMA ;
 int XCHAN_CAP_IOMMU ;
 scalar_t__ XDMA_DEV_TO_MEM ;
 scalar_t__ XDMA_MEM_TO_DEV ;
 scalar_t__ XR_TYPE_MBUF ;
 int atomic_subtract_int (scalar_t__*,int) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int m_copyback (int ,int ,int ,void*) ;
 int panic (char*) ;
 int xdma_iommu_remove_entry (TYPE_2__*,int ) ;
 int xr_next ;

void
xchan_seg_done(xdma_channel_t *xchan,
    struct xdma_transfer_status *st)
{
 struct xdma_request *xr;
 xdma_controller_t *xdma;
 struct xchan_buf *b;
 bus_addr_t addr;

 xdma = xchan->xdma;

 xr = TAILQ_FIRST(&xchan->processing);
 if (xr == ((void*)0))
  panic("request not found\n");

 b = &xr->buf;

 atomic_subtract_int(&b->nsegs_left, 1);

 if (b->nsegs_left == 0) {
  if (xchan->caps & XCHAN_CAP_BUSDMA) {
   if (xr->direction == XDMA_MEM_TO_DEV)
    bus_dmamap_sync(xchan->dma_tag_bufs, b->map,
        BUS_DMASYNC_POSTWRITE);
   else
    bus_dmamap_sync(xchan->dma_tag_bufs, b->map,
        BUS_DMASYNC_POSTREAD);
   bus_dmamap_unload(xchan->dma_tag_bufs, b->map);
  } else if (xchan->caps & XCHAN_CAP_BOUNCE) {
   if (xr->req_type == XR_TYPE_MBUF &&
       xr->direction == XDMA_DEV_TO_MEM)
    m_copyback(xr->m, 0, st->transferred,
        (void *)xr->buf.vaddr);
  } else if (xchan->caps & XCHAN_CAP_IOMMU) {
   if (xr->direction == XDMA_MEM_TO_DEV)
    addr = xr->src_addr;
   else
    addr = xr->dst_addr;
   xdma_iommu_remove_entry(xchan, addr);
  }
  xr->status.error = st->error;
  xr->status.transferred = st->transferred;

  QUEUE_PROC_LOCK(xchan);
  TAILQ_REMOVE(&xchan->processing, xr, xr_next);
  QUEUE_PROC_UNLOCK(xchan);

  QUEUE_OUT_LOCK(xchan);
  TAILQ_INSERT_TAIL(&xchan->queue_out, xr, xr_next);
  QUEUE_OUT_UNLOCK(xchan);
 }
}
