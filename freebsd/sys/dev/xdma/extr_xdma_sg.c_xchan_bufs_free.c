
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int caps; int xr_num; int dma_tag_bufs; struct xdma_request* xr_mem; } ;
typedef TYPE_1__ xdma_channel_t ;
struct xchan_buf {int map; } ;
struct xdma_request {struct xchan_buf buf; } ;


 int XCHAN_BUFS_ALLOCATED ;
 int XCHAN_CAP_BUSDMA ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_destroy (int ,int ) ;
 int xchan_bufs_free_reserved (TYPE_1__*) ;

__attribute__((used)) static int
xchan_bufs_free(xdma_channel_t *xchan)
{
 struct xdma_request *xr;
 struct xchan_buf *b;
 int i;

 if ((xchan->flags & XCHAN_BUFS_ALLOCATED) == 0)
  return (-1);

 if (xchan->caps & XCHAN_CAP_BUSDMA) {
  for (i = 0; i < xchan->xr_num; i++) {
   xr = &xchan->xr_mem[i];
   b = &xr->buf;
   bus_dmamap_destroy(xchan->dma_tag_bufs, b->map);
  }
  bus_dma_tag_destroy(xchan->dma_tag_bufs);
 } else
  xchan_bufs_free_reserved(xchan);

 xchan->flags &= ~XCHAN_BUFS_ALLOCATED;

 return (0);
}
