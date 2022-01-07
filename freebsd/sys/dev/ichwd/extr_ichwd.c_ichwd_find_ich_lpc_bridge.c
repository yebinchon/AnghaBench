
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct ichwd_device {scalar_t__ device; int * desc; } ;
typedef int * device_t ;


 scalar_t__ VENDORID_INTEL ;
 scalar_t__ devclass_find (char*) ;
 scalar_t__ device_get_devclass (int *) ;
 int * device_get_parent (int *) ;
 struct ichwd_device* ichwd_devices ;
 scalar_t__ pci_get_device (int *) ;
 scalar_t__ pci_get_vendor (int *) ;

__attribute__((used)) static device_t
ichwd_find_ich_lpc_bridge(device_t isa, struct ichwd_device **id_p)
{
 struct ichwd_device *id;
 device_t isab, pci;
 uint16_t devid;


 isab = device_get_parent(isa);
 pci = device_get_parent(isab);
 if (pci == ((void*)0) || device_get_devclass(pci) != devclass_find("pci"))
  return (((void*)0));
 if (pci_get_vendor(isab) != VENDORID_INTEL)
  return (((void*)0));
 devid = pci_get_device(isab);
 for (id = ichwd_devices; id->desc != ((void*)0); ++id) {
  if (devid == id->device) {
   if (id_p != ((void*)0))
    *id_p = id;
   return (isab);
  }
 }

 return (((void*)0));
}
