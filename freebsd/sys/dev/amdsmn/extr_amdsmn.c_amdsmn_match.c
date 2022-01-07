
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct pciid {scalar_t__ amdsmn_vendorid; scalar_t__ amdsmn_deviceid; } ;
typedef int device_t ;


 struct pciid* amdsmn_ids ;
 size_t nitems (struct pciid*) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static bool
amdsmn_match(device_t parent, const struct pciid **pciid_out)
{
 uint16_t vendor, device;
 size_t i;

 vendor = pci_get_vendor(parent);
 device = pci_get_device(parent);

 for (i = 0; i < nitems(amdsmn_ids); i++) {
  if (vendor == amdsmn_ids[i].amdsmn_vendorid &&
      device == amdsmn_ids[i].amdsmn_deviceid) {
   if (pciid_out != ((void*)0))
    *pciid_out = &amdsmn_ids[i];
   return (1);
  }
 }
 return (0);
}
