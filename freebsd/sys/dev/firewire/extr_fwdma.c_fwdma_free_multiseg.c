
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwdma_seg {int v_addr; int dma_map; } ;
struct fwdma_alloc_multi {int dma_tag; int ssize; int nseg; struct fwdma_seg* seg; } ;


 int M_FW ;
 int bus_dma_tag_destroy (int ) ;
 int free (struct fwdma_alloc_multi*,int ) ;
 int fwdma_free_size (int ,int ,int ,int ) ;

void
fwdma_free_multiseg(struct fwdma_alloc_multi *am)
{
 struct fwdma_seg *seg;

 for (seg = &am->seg[0]; am->nseg--; seg++) {
  fwdma_free_size(am->dma_tag, seg->dma_map,
   seg->v_addr, am->ssize);
 }
 bus_dma_tag_destroy(am->dma_tag);
 free(am, M_FW);
}
