
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct ata_pci_controller {TYPE_1__* interrupt; scalar_t__ legacy; } ;
struct ata_channel {int unit; } ;
typedef int device_t ;
struct TYPE_2__ {int * argument; int * function; } ;


 int ATA_PCI_MAX_CH ;
 int BUS_TEARDOWN_INTR (int ,int ,struct resource*,void*) ;
 scalar_t__ ata_devclass ;
 scalar_t__ device_get_devclass (int ) ;
 int device_get_parent (int ) ;
 struct ata_pci_controller* device_get_softc (int ) ;

int
ata_pci_teardown_intr(device_t dev, device_t child, struct resource *irq,
        void *cookie)
{
 struct ata_pci_controller *controller = device_get_softc(dev);

        if (controller->legacy) {
  return BUS_TEARDOWN_INTR(device_get_parent(dev), child, irq, cookie);
 } else {
  struct ata_pci_controller *controller = device_get_softc(dev);
  int unit;

  if (device_get_devclass(child) == ata_devclass)
   unit = ((struct ata_channel *)device_get_softc(child))->unit;
  else
   unit = ATA_PCI_MAX_CH - 1;
  controller->interrupt[unit].function = ((void*)0);
  controller->interrupt[unit].argument = ((void*)0);
  return 0;
 }
}
