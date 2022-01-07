
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct bhndb_pci_softc {int pci_quirks; int dev; } ;
typedef int sbintvec ;
typedef int device_t ;


 int BHNDB_PCI_LOCK (struct bhndb_pci_softc*) ;
 int BHNDB_PCI_QUIRK_SIBA_INTVEC ;
 int BHNDB_PCI_UNLOCK (struct bhndb_pci_softc*) ;
 int ENXIO ;
 int KASSERT (int,char*) ;
 int SB0_REG_ABS (int ) ;
 int SIBA_CFG0_INTVEC ;
 int bhnd_get_intr_ivec (int ,int ,int*) ;
 int bhndb_pci_read_core (struct bhndb_pci_softc*,int ,int) ;
 int bhndb_pci_write_core (struct bhndb_pci_softc*,int ,int,int) ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static int
bhndb_pci_route_siba_interrupts(struct bhndb_pci_softc *sc, device_t child)
{
 uint32_t sbintvec;
 u_int ivec;
 int error;

 KASSERT(sc->pci_quirks & BHNDB_PCI_QUIRK_SIBA_INTVEC,
     ("route_siba_interrupts not supported by this hardware"));


 if ((error = bhnd_get_intr_ivec(child, 0, &ivec)))
  return (error);

 if (ivec > (sizeof(sbintvec)*8) - 1 ) {

  device_printf(sc->dev, "cannot route interrupts to high "
      "sbflag# %u\n", ivec);
  return (ENXIO);
 }

 BHNDB_PCI_LOCK(sc);

 sbintvec = bhndb_pci_read_core(sc, SB0_REG_ABS(SIBA_CFG0_INTVEC), 4);
 sbintvec |= (1 << ivec);
 bhndb_pci_write_core(sc, SB0_REG_ABS(SIBA_CFG0_INTVEC), sbintvec, 4);

 BHNDB_PCI_UNLOCK(sc);

 return (0);
}
