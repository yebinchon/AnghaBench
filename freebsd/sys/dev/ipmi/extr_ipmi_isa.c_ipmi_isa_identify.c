
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ipmi_get_info {scalar_t__ iface_type; } ;
typedef int driver_t ;
typedef int device_t ;


 int BUS_ADD_CHILD (int ,int ,char*,int) ;
 int PCIR_DEVVENDOR ;
 scalar_t__ SSIF_MODE ;
 int * device_find_child (int ,char*,int) ;
 int * ipmi_pci_match (int,int) ;
 scalar_t__ ipmi_smbios_identify (struct ipmi_get_info*) ;
 int pci_cfgregread (int ,int,int,int ,int) ;

__attribute__((used)) static void
ipmi_isa_identify(driver_t *driver, device_t parent)
{
 struct ipmi_get_info info;
 uint32_t devid;

 if (ipmi_smbios_identify(&info) && info.iface_type != SSIF_MODE &&
     device_find_child(parent, "ipmi", -1) == ((void*)0)) {
  devid = pci_cfgregread(0, 4, 2, PCIR_DEVVENDOR, 4);
  if (devid != 0xffffffff &&
      ipmi_pci_match(devid & 0xffff, devid >> 16) != ((void*)0))
   return;
  BUS_ADD_CHILD(parent, 0, "ipmi", -1);
 }
}
