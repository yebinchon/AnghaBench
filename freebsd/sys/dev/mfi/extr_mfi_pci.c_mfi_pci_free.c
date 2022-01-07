
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfi_softc {scalar_t__ mfi_irq_rid; int mfi_dev; int * mfi_regs_resource; int mfi_regs_rid; } ;


 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int pci_release_msi (int ) ;

__attribute__((used)) static void
mfi_pci_free(struct mfi_softc *sc)
{

 if (sc->mfi_regs_resource != ((void*)0)) {
  bus_release_resource(sc->mfi_dev, SYS_RES_MEMORY,
      sc->mfi_regs_rid, sc->mfi_regs_resource);
 }
 if (sc->mfi_irq_rid != 0)
  pci_release_msi(sc->mfi_dev);

 return;
}
