
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int device_t ;


 int device_printf (int ,char*) ;
 int pci_get_device (int ) ;
 int pci_get_revid (int ) ;
 int pci_read_config (int ,int,int) ;
 int pci_write_config (int ,int,int,int) ;

__attribute__((used)) static void
ehci_pci_via_quirk(device_t self)
{
 uint32_t val;

 if ((pci_get_device(self) == 0x3104) &&
     ((pci_get_revid(self) & 0xf0) == 0x60)) {

  val = pci_read_config(self, 0x4b, 1);
  if (val & 0x20)
   return;
  val |= 0x20;
  pci_write_config(self, 0x4b, val, 1);
  device_printf(self, "VIA-quirk applied\n");
 }
}
