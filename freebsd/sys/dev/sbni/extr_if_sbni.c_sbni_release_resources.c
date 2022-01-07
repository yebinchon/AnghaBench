
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbni_softc {scalar_t__ io_off; scalar_t__ io_res; int io_rid; int dev; scalar_t__ irq_res; int irq_rid; } ;


 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;

void
sbni_release_resources(struct sbni_softc *sc)
{

 if (sc->irq_res)
  bus_release_resource(sc->dev, SYS_RES_IRQ, sc->irq_rid,
      sc->irq_res);
 if (sc->io_res && sc->io_off == 0)
  bus_release_resource(sc->dev, SYS_RES_IOPORT, sc->io_rid,
      sc->io_res);
}
