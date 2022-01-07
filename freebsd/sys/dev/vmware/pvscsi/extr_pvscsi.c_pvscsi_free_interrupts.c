
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvscsi_softc {int dev; scalar_t__ use_msi_or_msix; int * irq_res; int irq_id; int * irq_handler; } ;


 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int pci_release_msi (int ) ;

__attribute__((used)) static void
pvscsi_free_interrupts(struct pvscsi_softc *sc)
{

 if (sc->irq_handler != ((void*)0)) {
  bus_teardown_intr(sc->dev, sc->irq_res, sc->irq_handler);
 }
 if (sc->irq_res != ((void*)0)) {
  bus_release_resource(sc->dev, SYS_RES_IRQ, sc->irq_id,
      sc->irq_res);
 }
 if (sc->use_msi_or_msix) {
  pci_release_msi(sc->dev);
 }
}
