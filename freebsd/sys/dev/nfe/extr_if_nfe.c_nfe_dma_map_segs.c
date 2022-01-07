
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nfe_dmamap_arg {int nfe_busaddr; } ;
struct TYPE_3__ {int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;


 int KASSERT (int,char*) ;

__attribute__((used)) static void
nfe_dma_map_segs(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
 struct nfe_dmamap_arg *ctx;

 if (error != 0)
  return;

 KASSERT(nseg == 1, ("too many DMA segments, %d should be 1", nseg));

 ctx = (struct nfe_dmamap_arg *)arg;
 ctx->nfe_busaddr = segs[0].ds_addr;
}
