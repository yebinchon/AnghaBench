
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bhndb_regwin {int win_size; } ;
struct bhndb_pci_softc {int dev; int parent; } ;
typedef int bus_size_t ;


 int BHNDB_PCI_SPROM_BLANK ;
 int BHNDB_PCI_SPROM_CONTROL ;



 int BHNDB_PCI_SPROM_SZ_MASK ;

 int MIN (int,int ) ;
 struct bhndb_regwin* bhndb_pci_sprom_regwin (struct bhndb_pci_softc*) ;
 int device_printf (int ,char*,int) ;
 int pci_read_config (int ,int ,int) ;

__attribute__((used)) static bus_size_t
bhndb_pci_sprom_size(struct bhndb_pci_softc *sc)
{
 const struct bhndb_regwin *sprom_win;
 uint32_t sctl;
 bus_size_t sprom_sz;

 sprom_win = bhndb_pci_sprom_regwin(sc);


 if (sprom_win == ((void*)0))
  return (0);


 sctl = pci_read_config(sc->parent, BHNDB_PCI_SPROM_CONTROL, 4);
 if (sctl & BHNDB_PCI_SPROM_BLANK)
  return (0);

 switch (sctl & BHNDB_PCI_SPROM_SZ_MASK) {
 case 130:
  sprom_sz = (1 * 1024);
  break;

 case 129:
  sprom_sz = (4 * 1024);
  break;

 case 131:
  sprom_sz = (16 * 1024);
  break;

 case 128:
 default:
  device_printf(sc->dev, "invalid PCI sprom size 0x%x\n", sctl);
  return (0);
 }




 sprom_sz = MIN(sprom_sz, sprom_win->win_size);

 return (sprom_sz);
}
