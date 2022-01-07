
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_softc {int * vmci_res1; int vmci_dev; int * vmci_res0; } ;


 int PCIR_BAR (int) ;
 int SYS_RES_IOPORT ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int,int *) ;

__attribute__((used)) static void
vmci_unmap_bars(struct vmci_softc *sc)
{
 int rid;

 if (sc->vmci_res0 != ((void*)0)) {
  rid = PCIR_BAR(0);
  bus_release_resource(sc->vmci_dev, SYS_RES_IOPORT, rid,
      sc->vmci_res0);
  sc->vmci_res0 = ((void*)0);
 }

 if (sc->vmci_res1 != ((void*)0)) {
  rid = PCIR_BAR(1);
  bus_release_resource(sc->vmci_dev, SYS_RES_MEMORY, rid,
      sc->vmci_res1);
  sc->vmci_res1 = ((void*)0);
 }
}
