
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhndb_pci_softc {int parent; int dev; } ;


 int BHNDB_PCI_MSI_COUNT ;
 int ENXIO ;
 int device_printf (int ,char*,int) ;
 int pci_alloc_msi (int ,int*) ;
 int pci_msi_count (int ) ;
 int pci_release_msi (int ) ;

__attribute__((used)) static int
bhndb_pci_alloc_msi(struct bhndb_pci_softc *sc, int *msi_count)
{
 int error, count;


 if (pci_msi_count(sc->parent) < BHNDB_PCI_MSI_COUNT)
  return (ENXIO);


 count = BHNDB_PCI_MSI_COUNT;
 if ((error = pci_alloc_msi(sc->parent, &count))) {
  device_printf(sc->dev, "failed to allocate MSI interrupts: "
      "%d\n", error);

  return (error);
 }

 if (count < BHNDB_PCI_MSI_COUNT) {
  pci_release_msi(sc->parent);
  return (ENXIO);
 }

 *msi_count = count;
 return (0);
}
