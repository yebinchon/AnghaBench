
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct puc_cfg {int vendor; scalar_t__ device; scalar_t__ subvendor; scalar_t__ subdevice; } ;
typedef int device_t ;


 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_subdevice (int ) ;
 scalar_t__ pci_get_subvendor (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static const struct puc_cfg *
puc_pci_match(device_t dev, const struct puc_cfg *desc)
{
 uint16_t vendor, device;
 uint16_t subvendor, subdevice;

 vendor = pci_get_vendor(dev);
 device = pci_get_device(dev);
 subvendor = pci_get_subvendor(dev);
 subdevice = pci_get_subdevice(dev);

 while (desc->vendor != 0xffff) {
  if (desc->vendor == vendor && desc->device == device) {

   if (desc->subvendor == subvendor &&
              desc->subdevice == subdevice)
    return (desc);

   if (desc->subvendor == 0xffff)
    return (desc);
  }
  desc++;
 }


 return (((void*)0));
}
