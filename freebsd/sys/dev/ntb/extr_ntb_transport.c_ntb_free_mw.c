
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_transport_mw {int * virt_addr; scalar_t__ buff_size; int dma_tag; int dma_map; } ;
struct ntb_transport_ctx {int dev; struct ntb_transport_mw* mw_vec; } ;


 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,int *,int ) ;
 int ntb_mw_clear_trans (int ,int) ;

__attribute__((used)) static void
ntb_free_mw(struct ntb_transport_ctx *nt, int num_mw)
{
 struct ntb_transport_mw *mw = &nt->mw_vec[num_mw];

 if (mw->virt_addr == ((void*)0))
  return;

 ntb_mw_clear_trans(nt->dev, num_mw);
 bus_dmamap_unload(mw->dma_tag, mw->dma_map);
 bus_dmamem_free(mw->dma_tag, mw->virt_addr, mw->dma_map);
 bus_dma_tag_destroy(mw->dma_tag);
 mw->buff_size = 0;
 mw->virt_addr = ((void*)0);
}
