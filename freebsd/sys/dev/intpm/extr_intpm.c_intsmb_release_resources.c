
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intsmb_softc {int lock; scalar_t__ io_res; int io_rid; scalar_t__ irq_res; scalar_t__ irq_hand; scalar_t__ smbus; } ;
typedef int device_t ;


 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int bus_teardown_intr (int ,scalar_t__,scalar_t__) ;
 int device_delete_child (int ,scalar_t__) ;
 struct intsmb_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static void
intsmb_release_resources(device_t dev)
{
 struct intsmb_softc *sc = device_get_softc(dev);

 if (sc->smbus)
  device_delete_child(dev, sc->smbus);
 if (sc->irq_hand)
  bus_teardown_intr(dev, sc->irq_res, sc->irq_hand);
 if (sc->irq_res)
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->irq_res);
 if (sc->io_res)
  bus_release_resource(dev, SYS_RES_IOPORT, sc->io_rid,
      sc->io_res);
 mtx_destroy(&sc->lock);
}
