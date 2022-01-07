
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef int * device_t ;


 int PCI_EHCI_VENDORID_ATI ;
 int device_printf (int *,char*) ;
 int * pci_find_device (int ,int) ;
 int pci_get_revid (int *) ;
 int pci_read_config (int *,int,int) ;
 int pci_write_config (int *,int,int,int) ;

__attribute__((used)) static void
ehci_pci_ati_quirk(device_t self, uint8_t is_sb700)
{
 device_t smbdev;
 uint32_t val;

 if (is_sb700) {

  smbdev = pci_find_device(PCI_EHCI_VENDORID_ATI, 0x4385);
  if (smbdev == ((void*)0))
   return;
  val = pci_get_revid(smbdev);
  if (val != 0x3a && val != 0x3b)
   return;
 }





 val = pci_read_config(self, 0x53, 1);
 if (!(val & 0x8)) {
  val |= 0x8;
  pci_write_config(self, 0x53, val, 1);
  device_printf(self, "AMD SB600/700 quirk applied\n");
 }
}
