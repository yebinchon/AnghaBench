
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int sc_lock; struct sc_info* savemem; int parent_dmat; int reg; int regid; int regtype; int irq; int irqid; int ih; } ;
typedef int device_t ;


 int CALL ;
 int M3_DEBUG (int ,char*) ;
 int M3_LOCK (struct sc_info*) ;
 int M3_UNLOCK (struct sc_info*) ;
 int M_DEVBUF ;
 int SYS_RES_IRQ ;
 int bus_dma_tag_destroy (int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int free (struct sc_info*,int ) ;
 int m3_power (struct sc_info*,int) ;
 int m3_uninit (struct sc_info*) ;
 struct sc_info* pcm_getdevinfo (int ) ;
 int pcm_unregister (int ) ;
 int snd_mtxfree (int ) ;

__attribute__((used)) static int
m3_pci_detach(device_t dev)
{
 struct sc_info *sc = pcm_getdevinfo(dev);
 int r;

 M3_DEBUG(CALL, ("m3_pci_detach\n"));

 if ((r = pcm_unregister(dev)) != 0) {
  return r;
 }

 M3_LOCK(sc);
 m3_uninit(sc);
 m3_power(sc, 3);
 M3_UNLOCK(sc);

 bus_teardown_intr(dev, sc->irq, sc->ih);
 bus_release_resource(dev, SYS_RES_IRQ, sc->irqid, sc->irq);
 bus_release_resource(dev, sc->regtype, sc->regid, sc->reg);
 bus_dma_tag_destroy(sc->parent_dmat);

 free(sc->savemem, M_DEVBUF);
 snd_mtxfree(sc->sc_lock);
 free(sc, M_DEVBUF);
 return 0;
}
