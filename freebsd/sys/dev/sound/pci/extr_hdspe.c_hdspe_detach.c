
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {scalar_t__ lock; scalar_t__ cs; scalar_t__ irq; scalar_t__ dmat; scalar_t__ ih; } ;
typedef int device_t ;


 int PCIR_BAR (int ) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int bus_teardown_intr (int ,scalar_t__,scalar_t__) ;
 int device_delete_children (int ) ;
 struct sc_info* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int hdspe_dmafree (struct sc_info*) ;
 int snd_mtxfree (scalar_t__) ;

__attribute__((used)) static int
hdspe_detach(device_t dev)
{
 struct sc_info *sc;
 int err;

 sc = device_get_softc(dev);
 if (sc == ((void*)0)) {
  device_printf(dev,"Can't detach: softc is null.\n");
  return (0);
 }

 err = device_delete_children(dev);
 if (err)
  return (err);

 hdspe_dmafree(sc);

 if (sc->ih)
  bus_teardown_intr(dev, sc->irq, sc->ih);
 if (sc->dmat)
  bus_dma_tag_destroy(sc->dmat);
 if (sc->irq)
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->irq);
 if (sc->cs)
  bus_release_resource(dev, SYS_RES_MEMORY, PCIR_BAR(0), sc->cs);
 if (sc->lock)
  snd_mtxfree(sc->lock);

 return (0);
}
