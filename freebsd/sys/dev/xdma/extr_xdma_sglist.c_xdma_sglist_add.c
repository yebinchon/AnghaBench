
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct xdma_sglist {scalar_t__ direction; int first; int last; int len; int dst_addr; int src_addr; int dst_width; int src_width; } ;
struct xdma_request {scalar_t__ direction; int src_addr; int dst_addr; int dst_width; int src_width; } ;
struct bus_dma_segment {int ds_len; int ds_addr; } ;


 scalar_t__ XDMA_MEM_TO_DEV ;

int
xdma_sglist_add(struct xdma_sglist *sg, struct bus_dma_segment *seg,
    uint32_t nsegs, struct xdma_request *xr)
{
 int i;

 if (nsegs == 0)
  return (-1);

 for (i = 0; i < nsegs; i++) {
  sg[i].src_width = xr->src_width;
  sg[i].dst_width = xr->dst_width;

  if (xr->direction == XDMA_MEM_TO_DEV) {
   sg[i].src_addr = seg[i].ds_addr;
   sg[i].dst_addr = xr->dst_addr;
  } else {
   sg[i].src_addr = xr->src_addr;
   sg[i].dst_addr = seg[i].ds_addr;
  }
  sg[i].len = seg[i].ds_len;
  sg[i].direction = xr->direction;

  sg[i].first = 0;
  sg[i].last = 0;
 }

 sg[0].first = 1;
 sg[nsegs - 1].last = 1;

 return (0);
}
