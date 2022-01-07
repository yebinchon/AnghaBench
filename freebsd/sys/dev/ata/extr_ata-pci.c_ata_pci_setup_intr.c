
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct ata_pci_controller {TYPE_1__* interrupt; scalar_t__ legacy; } ;
struct ata_channel {int unit; } ;
typedef int driver_intr_t ;
typedef int driver_filter_t ;
typedef int device_t ;
struct TYPE_2__ {void* argument; int * function; } ;


 int ATA_PCI_MAX_CH ;
 int BUS_SETUP_INTR (int ,int ,struct resource*,int,int *,int *,void*,void**) ;
 int EINVAL ;
 scalar_t__ ata_devclass ;
 scalar_t__ device_get_devclass (int ) ;
 int device_get_parent (int ) ;
 struct ata_pci_controller* device_get_softc (int ) ;
 int printf (char*) ;

int
ata_pci_setup_intr(device_t dev, device_t child, struct resource *irq,
     int flags, driver_filter_t *filter, driver_intr_t *function,
     void *argument, void **cookiep)
{
 struct ata_pci_controller *controller = device_get_softc(dev);

 if (controller->legacy) {
  return BUS_SETUP_INTR(device_get_parent(dev), child, irq,
         flags, filter, function, argument, cookiep);
 } else {
  struct ata_pci_controller *controller = device_get_softc(dev);
  int unit;

      if (filter != ((void*)0)) {
   printf("ata-pci.c: we cannot use a filter here\n");
   return (EINVAL);
  }
  if (device_get_devclass(child) == ata_devclass)
   unit = ((struct ata_channel *)device_get_softc(child))->unit;
  else
   unit = ATA_PCI_MAX_CH - 1;
  controller->interrupt[unit].function = function;
  controller->interrupt[unit].argument = argument;
  *cookiep = controller;
  return 0;
 }
}
