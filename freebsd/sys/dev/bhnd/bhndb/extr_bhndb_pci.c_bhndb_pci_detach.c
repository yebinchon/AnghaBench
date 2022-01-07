
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhndb_pci_softc {scalar_t__ msi_count; int parent; int isrc; int dev; } ;
typedef int device_t ;


 int BHNDB_PCI_LOCK_DESTROY (struct bhndb_pci_softc*) ;
 int bhndb_disable_pci_clocks (int ) ;
 int bhndb_free_intr_isrc (int ) ;
 int bhndb_generic_detach (int ) ;
 int bus_generic_detach (int ) ;
 struct bhndb_pci_softc* device_get_softc (int ) ;
 int pci_disable_busmaster (int ) ;
 int pci_release_msi (int ) ;

__attribute__((used)) static int
bhndb_pci_detach(device_t dev)
{
 struct bhndb_pci_softc *sc;
 int error;

 sc = device_get_softc(dev);


 if ((error = bus_generic_detach(dev)))
  return (error);


 if ((error = bhndb_generic_detach(dev)))
  return (error);


 if ((error = bhndb_disable_pci_clocks(sc->dev)))
  return (error);


 bhndb_free_intr_isrc(sc->isrc);


 if (sc->msi_count > 0)
  pci_release_msi(sc->parent);


 pci_disable_busmaster(sc->parent);

 BHNDB_PCI_LOCK_DESTROY(sc);

 return (0);
}
