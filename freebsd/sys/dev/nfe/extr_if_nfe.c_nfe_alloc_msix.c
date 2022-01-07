
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfe_softc {int nfe_msix; int * nfe_msix_res; int * nfe_msix_pba_res; int nfe_dev; } ;


 int NFE_MSI_MESSAGES ;
 int PCIR_BAR (int) ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 scalar_t__ bootverbose ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_release_resource (int ,int ,int,int *) ;
 int device_printf (int ,char*,...) ;
 scalar_t__ pci_alloc_msix (int ,int*) ;
 int pci_release_msi (int ) ;

__attribute__((used)) static void
nfe_alloc_msix(struct nfe_softc *sc, int count)
{
 int rid;

 rid = PCIR_BAR(2);
 sc->nfe_msix_res = bus_alloc_resource_any(sc->nfe_dev, SYS_RES_MEMORY,
     &rid, RF_ACTIVE);
 if (sc->nfe_msix_res == ((void*)0)) {
  device_printf(sc->nfe_dev,
      "couldn't allocate MSIX table resource\n");
  return;
 }
 rid = PCIR_BAR(3);
 sc->nfe_msix_pba_res = bus_alloc_resource_any(sc->nfe_dev,
     SYS_RES_MEMORY, &rid, RF_ACTIVE);
 if (sc->nfe_msix_pba_res == ((void*)0)) {
  device_printf(sc->nfe_dev,
      "couldn't allocate MSIX PBA resource\n");
  bus_release_resource(sc->nfe_dev, SYS_RES_MEMORY, PCIR_BAR(2),
      sc->nfe_msix_res);
  sc->nfe_msix_res = ((void*)0);
  return;
 }

 if (pci_alloc_msix(sc->nfe_dev, &count) == 0) {
  if (count == NFE_MSI_MESSAGES) {
   if (bootverbose)
    device_printf(sc->nfe_dev,
        "Using %d MSIX messages\n", count);
   sc->nfe_msix = 1;
  } else {
   if (bootverbose)
    device_printf(sc->nfe_dev,
        "couldn't allocate MSIX\n");
   pci_release_msi(sc->nfe_dev);
   bus_release_resource(sc->nfe_dev, SYS_RES_MEMORY,
       PCIR_BAR(3), sc->nfe_msix_pba_res);
   bus_release_resource(sc->nfe_dev, SYS_RES_MEMORY,
       PCIR_BAR(2), sc->nfe_msix_res);
   sc->nfe_msix_pba_res = ((void*)0);
   sc->nfe_msix_res = ((void*)0);
  }
 }
}
