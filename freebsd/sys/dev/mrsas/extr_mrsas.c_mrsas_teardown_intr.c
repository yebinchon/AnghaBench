
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrsas_softc {int msix_vectors; int mrsas_dev; int ** intr_handle; int ** mrsas_irq; int * irq_id; int msix_enable; } ;


 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int pci_release_msi (int ) ;

void
mrsas_teardown_intr(struct mrsas_softc *sc)
{
 int i;

 if (!sc->msix_enable) {
  if (sc->intr_handle[0])
   bus_teardown_intr(sc->mrsas_dev, sc->mrsas_irq[0], sc->intr_handle[0]);
  if (sc->mrsas_irq[0] != ((void*)0))
   bus_release_resource(sc->mrsas_dev, SYS_RES_IRQ,
       sc->irq_id[0], sc->mrsas_irq[0]);
  sc->intr_handle[0] = ((void*)0);
 } else {
  for (i = 0; i < sc->msix_vectors; i++) {
   if (sc->intr_handle[i])
    bus_teardown_intr(sc->mrsas_dev, sc->mrsas_irq[i],
        sc->intr_handle[i]);

   if (sc->mrsas_irq[i] != ((void*)0))
    bus_release_resource(sc->mrsas_dev, SYS_RES_IRQ,
        sc->irq_id[i], sc->mrsas_irq[i]);

   sc->intr_handle[i] = ((void*)0);
  }
  pci_release_msi(sc->mrsas_dev);
 }

}
