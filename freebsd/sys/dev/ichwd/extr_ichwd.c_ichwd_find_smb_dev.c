
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct ichwd_device {scalar_t__ device; int * desc; } ;
typedef int * device_t ;


 scalar_t__ VENDORID_INTEL ;
 int * device_get_parent (int *) ;
 struct ichwd_device* ichwd_smb_devices ;
 int * pci_find_dbsf (int ,int ,int,int) ;
 int pci_get_bus (int *) ;
 scalar_t__ pci_get_device (int *) ;
 int pci_get_domain (int *) ;
 scalar_t__ pci_get_vendor (int *) ;

__attribute__((used)) static device_t
ichwd_find_smb_dev(device_t isa, struct ichwd_device **id_p)
{
 struct ichwd_device *id;
 device_t isab, smb;
 uint16_t devid;






 isab = device_get_parent(isa);
 smb = pci_find_dbsf(pci_get_domain(isab), pci_get_bus(isab), 31, 4);
 if (smb == ((void*)0))
  return (((void*)0));
 if (pci_get_vendor(smb) != VENDORID_INTEL)
  return (((void*)0));
 devid = pci_get_device(smb);
 for (id = ichwd_smb_devices; id->desc != ((void*)0); ++id) {
  if (devid == id->device) {
   if (id_p != ((void*)0))
    *id_p = id;
   return (smb);
  }
 }

 return (((void*)0));
}
