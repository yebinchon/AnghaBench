
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msgdma_softc {int dummy; } ;
struct msgdma_desc {int dummy; } ;
struct msgdma_channel {int descs_num; struct msgdma_desc** descs_phys; struct msgdma_desc** dma_map; struct msgdma_desc** descs; int dma_tag; } ;


 int M_DEVBUF ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_unload (int ,struct msgdma_desc*) ;
 int bus_dmamem_free (int ,struct msgdma_desc*,struct msgdma_desc*) ;
 int free (struct msgdma_desc**,int ) ;

__attribute__((used)) static int
msgdma_desc_free(struct msgdma_softc *sc, struct msgdma_channel *chan)
{
 struct msgdma_desc *desc;
 int nsegments;
 int i;

 nsegments = chan->descs_num;

 for (i = 0; i < nsegments; i++) {
  desc = chan->descs[i];
  bus_dmamap_unload(chan->dma_tag, chan->dma_map[i]);
  bus_dmamem_free(chan->dma_tag, desc, chan->dma_map[i]);
 }

 bus_dma_tag_destroy(chan->dma_tag);
 free(chan->descs, M_DEVBUF);
 free(chan->dma_map, M_DEVBUF);
 free(chan->descs_phys, M_DEVBUF);

 return (0);
}
