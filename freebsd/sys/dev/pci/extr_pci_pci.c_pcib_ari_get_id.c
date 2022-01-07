
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pcib_softc {int flags; } ;
typedef enum pci_id_type { ____Placeholder_pci_id_type } pci_id_type ;
typedef int device_t ;


 int PCIB_ENABLE_ARI ;
 int PCIB_GET_ID (int ,int ,int,uintptr_t*) ;
 uintptr_t PCI_ARI_RID (int ,int ) ;
 int PCI_ID_RID ;
 uintptr_t PCI_RID (int ,int ,int ) ;
 int device_get_parent (int ) ;
 struct pcib_softc* device_get_softc (int ) ;
 int pci_get_bus (int ) ;
 int pci_get_function (int ) ;
 int pci_get_slot (int ) ;

__attribute__((used)) static int
pcib_ari_get_id(device_t pcib, device_t dev, enum pci_id_type type,
    uintptr_t *id)
{
 struct pcib_softc *sc;
 device_t bus_dev;
 uint8_t bus, slot, func;

 if (type != PCI_ID_RID) {
  bus_dev = device_get_parent(pcib);
  return (PCIB_GET_ID(device_get_parent(bus_dev), dev, type, id));
 }

 sc = device_get_softc(pcib);

 if (sc->flags & PCIB_ENABLE_ARI) {
  bus = pci_get_bus(dev);
  func = pci_get_function(dev);

  *id = (PCI_ARI_RID(bus, func));
 } else {
  bus = pci_get_bus(dev);
  slot = pci_get_slot(dev);
  func = pci_get_function(dev);

  *id = (PCI_RID(bus, slot, func));
 }

 return (0);
}
