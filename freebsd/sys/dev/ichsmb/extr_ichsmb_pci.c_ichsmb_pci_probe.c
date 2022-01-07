
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ichsmb_device {scalar_t__ id; int * name; } ;
typedef int device_t ;


 int ENXIO ;
 scalar_t__ PCI_VENDOR_INTEL ;
 int device_set_desc (int ,int *) ;
 struct ichsmb_device* ichsmb_devices ;
 int ichsmb_probe (int ) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static int
ichsmb_pci_probe(device_t dev)
{
 const struct ichsmb_device *device;

 if (pci_get_vendor(dev) != PCI_VENDOR_INTEL)
  return (ENXIO);

 for (device = ichsmb_devices; device->name != ((void*)0); device++) {
  if (pci_get_device(dev) == device->id) {
   device_set_desc(dev, device->name);
   return (ichsmb_probe(dev));
  }
 }

 return (ENXIO);
}
