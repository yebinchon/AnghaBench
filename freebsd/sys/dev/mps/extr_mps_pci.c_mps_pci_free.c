
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mps_softc {int mps_flags; int * mps_regs_resource; int mps_regs_rid; int mps_dev; int * mps_parent_dmat; } ;


 int MPS_FLAGS_MSI ;
 int SYS_RES_MEMORY ;
 int bus_dma_tag_destroy (int *) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int mps_pci_free_interrupts (struct mps_softc*) ;
 int pci_release_msi (int ) ;

__attribute__((used)) static void
mps_pci_free(struct mps_softc *sc)
{

 if (sc->mps_parent_dmat != ((void*)0)) {
  bus_dma_tag_destroy(sc->mps_parent_dmat);
 }

 mps_pci_free_interrupts(sc);

 if (sc->mps_flags & MPS_FLAGS_MSI)
  pci_release_msi(sc->mps_dev);

 if (sc->mps_regs_resource != ((void*)0)) {
  bus_release_resource(sc->mps_dev, SYS_RES_MEMORY,
      sc->mps_regs_rid, sc->mps_regs_resource);
 }

 return;
}
