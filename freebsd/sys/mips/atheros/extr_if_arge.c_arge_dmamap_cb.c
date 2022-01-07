
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct arge_dmamap_arg {int arge_busaddr; } ;
struct TYPE_3__ {int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;



__attribute__((used)) static void
arge_dmamap_cb(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
 struct arge_dmamap_arg *ctx;

 if (error != 0)
  return;
 ctx = arg;
 ctx->arge_busaddr = segs[0].ds_addr;
}
