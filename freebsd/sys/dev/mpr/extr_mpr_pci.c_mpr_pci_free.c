
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpr_softc {int mpr_flags; int * mpr_regs_resource; int mpr_regs_rid; int mpr_dev; int * mpr_parent_dmat; } ;


 int MPR_FLAGS_MSI ;
 int SYS_RES_MEMORY ;
 int bus_dma_tag_destroy (int *) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int mpr_pci_free_interrupts (struct mpr_softc*) ;
 int pci_release_msi (int ) ;

__attribute__((used)) static void
mpr_pci_free(struct mpr_softc *sc)
{

 if (sc->mpr_parent_dmat != ((void*)0)) {
  bus_dma_tag_destroy(sc->mpr_parent_dmat);
 }

 mpr_pci_free_interrupts(sc);

 if (sc->mpr_flags & MPR_FLAGS_MSI)
  pci_release_msi(sc->mpr_dev);

 if (sc->mpr_regs_resource != ((void*)0)) {
  bus_release_resource(sc->mpr_dev, SYS_RES_MEMORY,
      sc->mpr_regs_rid, sc->mpr_regs_resource);
 }

 return;
}
