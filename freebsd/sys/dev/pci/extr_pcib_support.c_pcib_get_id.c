
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum pci_id_type { ____Placeholder_pci_id_type } pci_id_type ;
typedef int device_t ;


 int ENXIO ;
 int PCI_ID_RID ;
 uintptr_t PCI_RID (int ,int ,int ) ;
 int pci_get_bus (int ) ;
 int pci_get_function (int ) ;
 int pci_get_slot (int ) ;

int
pcib_get_id(device_t pcib, device_t dev, enum pci_id_type type, uintptr_t *id)
{
 uint8_t bus, slot, func;

 if (type != PCI_ID_RID)
  return (ENXIO);

 bus = pci_get_bus(dev);
 slot = pci_get_slot(dev);
 func = pci_get_function(dev);

 *id = (PCI_RID(bus, slot, func));
 return (0);
}
