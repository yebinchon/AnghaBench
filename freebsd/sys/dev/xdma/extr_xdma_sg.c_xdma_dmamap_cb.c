
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct seg_load_request {int error; int nsegs; struct bus_dma_segment* seg; } ;
struct bus_dma_segment {int ds_len; int ds_addr; } ;
struct TYPE_3__ {int ds_len; int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;



__attribute__((used)) static void
xdma_dmamap_cb(void *arg, bus_dma_segment_t *segs, int nsegs, int error)
{
 struct seg_load_request *slr;
 struct bus_dma_segment *seg;
 int i;

 slr = arg;
 seg = slr->seg;

 if (error != 0) {
  slr->error = error;
  return;
 }

 slr->nsegs = nsegs;

 for (i = 0; i < nsegs; i++) {
  seg[i].ds_addr = segs[i].ds_addr;
  seg[i].ds_len = segs[i].ds_len;
 }
}
