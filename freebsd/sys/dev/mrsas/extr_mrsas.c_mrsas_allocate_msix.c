
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrsas_softc {int mrsas_dev; int msix_vectors; } ;


 int FAIL ;
 int SUCCESS ;
 int device_printf (int ,char*,...) ;
 int mrsas_teardown_intr (struct mrsas_softc*) ;
 scalar_t__ pci_alloc_msix (int ,int *) ;

__attribute__((used)) static int
mrsas_allocate_msix(struct mrsas_softc *sc)
{
 if (pci_alloc_msix(sc->mrsas_dev, &sc->msix_vectors) == 0) {
  device_printf(sc->mrsas_dev, "Using MSI-X with %d number"
      " of vectors\n", sc->msix_vectors);
 } else {
  device_printf(sc->mrsas_dev, "MSI-x setup failed\n");
  goto irq_alloc_failed;
 }
 return SUCCESS;

irq_alloc_failed:
 mrsas_teardown_intr(sc);
 return (FAIL);
}
