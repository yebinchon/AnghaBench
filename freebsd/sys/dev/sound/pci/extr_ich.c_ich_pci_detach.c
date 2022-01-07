
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int ich_lock; int dmat; int chan_dmat; int dtmap; int dtbl; int nabmbar; int nabmbarid; int regtype; int nambar; int nambarid; int irq; int irqid; int ih; } ;
typedef int device_t ;


 int M_DEVBUF ;
 int SYS_RES_IRQ ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,int ,int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int free (struct sc_info*,int ) ;
 struct sc_info* pcm_getdevinfo (int ) ;
 int pcm_unregister (int ) ;
 int snd_mtxfree (int ) ;

__attribute__((used)) static int
ich_pci_detach(device_t dev)
{
 struct sc_info *sc;
 int r;

 r = pcm_unregister(dev);
 if (r)
  return (r);
 sc = pcm_getdevinfo(dev);

 bus_teardown_intr(dev, sc->irq, sc->ih);
 bus_release_resource(dev, SYS_RES_IRQ, sc->irqid, sc->irq);
 bus_release_resource(dev, sc->regtype, sc->nambarid, sc->nambar);
 bus_release_resource(dev, sc->regtype, sc->nabmbarid, sc->nabmbar);
 bus_dmamap_unload(sc->dmat, sc->dtmap);
 bus_dmamem_free(sc->dmat, sc->dtbl, sc->dtmap);
 bus_dma_tag_destroy(sc->chan_dmat);
 bus_dma_tag_destroy(sc->dmat);
 snd_mtxfree(sc->ich_lock);
 free(sc, M_DEVBUF);
 return (0);
}
