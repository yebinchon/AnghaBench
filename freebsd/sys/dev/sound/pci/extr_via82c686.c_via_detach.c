
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_info {int lock; int sgd_dmat; int sgd_dmamap; int sgd_table; int parent_dmat; int irq; int irqid; int ih; int reg; int regid; } ;
typedef int device_t ;


 int M_DEVBUF ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,int ,int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int free (struct via_info*,int ) ;
 struct via_info* pcm_getdevinfo (int ) ;
 int pcm_unregister (int ) ;
 int snd_mtxfree (int ) ;

__attribute__((used)) static int
via_detach(device_t dev)
{
 int r;
 struct via_info *via = ((void*)0);

 r = pcm_unregister(dev);
 if (r)
  return r;

 via = pcm_getdevinfo(dev);
 bus_release_resource(dev, SYS_RES_IOPORT, via->regid, via->reg);
 bus_teardown_intr(dev, via->irq, via->ih);
 bus_release_resource(dev, SYS_RES_IRQ, via->irqid, via->irq);
 bus_dma_tag_destroy(via->parent_dmat);
 bus_dmamap_unload(via->sgd_dmat, via->sgd_dmamap);
 bus_dmamem_free(via->sgd_dmat, via->sgd_table, via->sgd_dmamap);
 bus_dma_tag_destroy(via->sgd_dmat);
 snd_mtxfree(via->lock);
 free(via, M_DEVBUF);
 return 0;
}
