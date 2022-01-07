
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct pci_id {int vendor; scalar_t__ device; int subven; scalar_t__ subdev; } ;
typedef int device_t ;


 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_subdevice (int ) ;
 scalar_t__ pci_get_subvendor (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) const static struct pci_id *
uart_pci_match(device_t dev, const struct pci_id *id)
{
 uint16_t device, subdev, subven, vendor;

 vendor = pci_get_vendor(dev);
 device = pci_get_device(dev);
 while (id->vendor != 0xffff &&
     (id->vendor != vendor || id->device != device))
  id++;
 if (id->vendor == 0xffff)
  return (((void*)0));
 if (id->subven == 0xffff)
  return (id);
 subven = pci_get_subvendor(dev);
 subdev = pci_get_subdevice(dev);
 while (id->vendor == vendor && id->device == device &&
     (id->subven != subven || id->subdev != subdev))
  id++;
 return ((id->vendor == vendor && id->device == device) ? id : ((void*)0));
}
