
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bce_softc {int bce_flags; int bce_mtx; int * bce_ifp; int * bce_res_mem; int * bce_res_irq; int * bce_intrhand; int bce_dev; } ;
typedef int device_t ;


 int BCE_INFO_RESET ;
 int BCE_LOCK_DESTROY (struct bce_softc*) ;
 int BCE_USING_MSIX_FLAG ;
 int BCE_USING_MSI_FLAG ;
 int BCE_VERBOSE_RESET ;
 int DBENTER (int ) ;
 int DBEXIT (int ) ;
 int DBPRINT (struct bce_softc*,int ,char*) ;
 int PCIR_BAR (int ) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bce_dma_free (struct bce_softc*) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int if_free (int *) ;
 scalar_t__ mtx_initialized (int *) ;
 int pci_release_msi (int ) ;
 int rman_get_rid (int *) ;

__attribute__((used)) static void
bce_release_resources(struct bce_softc *sc)
{
 device_t dev;

 DBENTER(BCE_VERBOSE_RESET);

 dev = sc->bce_dev;

 bce_dma_free(sc);

 if (sc->bce_intrhand != ((void*)0)) {
  DBPRINT(sc, BCE_INFO_RESET, "Removing interrupt handler.\n");
  bus_teardown_intr(dev, sc->bce_res_irq, sc->bce_intrhand);
 }

 if (sc->bce_res_irq != ((void*)0)) {
  DBPRINT(sc, BCE_INFO_RESET, "Releasing IRQ.\n");
  bus_release_resource(dev, SYS_RES_IRQ,
      rman_get_rid(sc->bce_res_irq), sc->bce_res_irq);
 }

 if (sc->bce_flags & (BCE_USING_MSI_FLAG | BCE_USING_MSIX_FLAG)) {
  DBPRINT(sc, BCE_INFO_RESET, "Releasing MSI/MSI-X vector.\n");
  pci_release_msi(dev);
 }

 if (sc->bce_res_mem != ((void*)0)) {
  DBPRINT(sc, BCE_INFO_RESET, "Releasing PCI memory.\n");
      bus_release_resource(dev, SYS_RES_MEMORY, PCIR_BAR(0),
      sc->bce_res_mem);
 }

 if (sc->bce_ifp != ((void*)0)) {
  DBPRINT(sc, BCE_INFO_RESET, "Releasing IF.\n");
  if_free(sc->bce_ifp);
 }

 if (mtx_initialized(&sc->bce_mtx))
  BCE_LOCK_DESTROY(sc);

 DBEXIT(BCE_VERBOSE_RESET);
}
