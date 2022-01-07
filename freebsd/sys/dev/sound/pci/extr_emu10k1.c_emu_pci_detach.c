
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int lock; int parent_dmat; int irq; int ih; int reg; } ;
typedef int device_t ;


 int M_DEVBUF ;
 int PCIR_BAR (int ) ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int bus_dma_tag_destroy (int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int emu_uninit (struct sc_info*) ;
 int free (struct sc_info*,int ) ;
 struct sc_info* pcm_getdevinfo (int ) ;
 int pcm_unregister (int ) ;
 int snd_mtxfree (int ) ;

__attribute__((used)) static int
emu_pci_detach(device_t dev)
{
 int r;
 struct sc_info *sc;

 r = pcm_unregister(dev);
 if (r)
  return r;

 sc = pcm_getdevinfo(dev);

 emu_uninit(sc);

 bus_release_resource(dev, SYS_RES_IOPORT, PCIR_BAR(0), sc->reg);
 bus_teardown_intr(dev, sc->irq, sc->ih);
 bus_release_resource(dev, SYS_RES_IRQ, 0, sc->irq);
 bus_dma_tag_destroy(sc->parent_dmat);
 snd_mtxfree(sc->lock);
 free(sc, M_DEVBUF);

 return 0;
}
