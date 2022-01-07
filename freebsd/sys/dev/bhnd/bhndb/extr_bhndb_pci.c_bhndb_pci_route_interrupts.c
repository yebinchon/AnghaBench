
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bhndb_pci_softc {int pci_quirks; int parent; } ;
struct bhnd_core_info {int core_idx; } ;
typedef int device_t ;


 int BHNDB_PCI_INT_MASK ;
 int BHNDB_PCI_LOCK (struct bhndb_pci_softc*) ;
 int BHNDB_PCI_QUIRK_SIBA_INTVEC ;
 int BHNDB_PCI_SBIM_COREIDX_MAX ;
 int BHNDB_PCI_SBIM_SHIFT ;
 int BHNDB_PCI_UNLOCK (struct bhndb_pci_softc*) ;
 int ENXIO ;
 struct bhnd_core_info bhnd_get_core_info (int ) ;
 int bhndb_pci_route_siba_interrupts (struct bhndb_pci_softc*,int ) ;
 struct bhndb_pci_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static int
bhndb_pci_route_interrupts(device_t dev, device_t child)
{
 struct bhndb_pci_softc *sc;
 struct bhnd_core_info core;
 uint32_t core_bit;
 uint32_t intmask;

 sc = device_get_softc(dev);

 if (sc->pci_quirks & BHNDB_PCI_QUIRK_SIBA_INTVEC)
  return (bhndb_pci_route_siba_interrupts(sc, child));

 core = bhnd_get_core_info(child);
 if (core.core_idx > BHNDB_PCI_SBIM_COREIDX_MAX) {

  device_printf(dev, "cannot route interrupts to high core "
      "index %u\n", core.core_idx);
  return (ENXIO);
 }

 BHNDB_PCI_LOCK(sc);

 core_bit = (1<<core.core_idx) << BHNDB_PCI_SBIM_SHIFT;
 intmask = pci_read_config(sc->parent, BHNDB_PCI_INT_MASK, 4);
 intmask |= core_bit;
 pci_write_config(sc->parent, BHNDB_PCI_INT_MASK, intmask, 4);

 BHNDB_PCI_UNLOCK(sc);

 return (0);
}
