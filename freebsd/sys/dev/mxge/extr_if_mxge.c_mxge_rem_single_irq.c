
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dev; scalar_t__ legacy_irq; int irq_res; int ih; } ;
typedef TYPE_1__ mxge_softc_t ;


 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int pci_release_msi (int ) ;

__attribute__((used)) static void
mxge_rem_single_irq(mxge_softc_t *sc)
{
 bus_teardown_intr(sc->dev, sc->irq_res, sc->ih);
 bus_release_resource(sc->dev, SYS_RES_IRQ,
        sc->legacy_irq ? 0 : 1, sc->irq_res);
 if (!sc->legacy_irq)
  pci_release_msi(sc->dev);
}
