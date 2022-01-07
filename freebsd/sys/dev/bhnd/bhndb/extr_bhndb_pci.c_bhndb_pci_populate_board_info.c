
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhndb_pci_softc {int parent; } ;
struct bhnd_board_info {scalar_t__ board_vendor; int board_devid; int board_type; } ;
typedef int device_t ;






 scalar_t__ PCI_VENDOR_APPLE ;
 struct bhndb_pci_softc* device_get_softc (int ) ;
 int pci_get_device (int ) ;
 int pci_get_subdevice (int ) ;
 scalar_t__ pci_get_subvendor (int ) ;

__attribute__((used)) static int
bhndb_pci_populate_board_info(device_t dev, device_t child,
    struct bhnd_board_info *info)
{
 struct bhndb_pci_softc *sc;

 sc = device_get_softc(dev);
 if (pci_get_subvendor(sc->parent) == PCI_VENDOR_APPLE) {
  switch (info->board_type) {
  case 131:
  case 130:
  case 129:
  case 128:
   info->board_type = 0;
   break;
  default:
   break;
  }
 }



 if (info->board_vendor == 0)
  info->board_vendor = pci_get_subvendor(sc->parent);

 if (info->board_type == 0)
  info->board_type = pci_get_subdevice(sc->parent);

 if (info->board_devid == 0)
  info->board_devid = pci_get_device(sc->parent);

 return (0);
}
