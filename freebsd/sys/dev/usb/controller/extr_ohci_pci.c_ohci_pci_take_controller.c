
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int device_t ;


 int PCIR_INTLINE ;
 int PCI_CBMEM ;
 scalar_t__ PCI_POWERSTATE_D0 ;
 int device_printf (int ,char*,scalar_t__) ;
 scalar_t__ pci_get_powerstate (int ) ;
 int pci_read_config (int ,int ,int) ;
 int pci_set_powerstate (int ,scalar_t__) ;
 int pci_write_config (int ,int ,int ,int) ;

__attribute__((used)) static int
ohci_pci_take_controller(device_t self)
{
 uint32_t reg;
 uint32_t int_line;

 if (pci_get_powerstate(self) != PCI_POWERSTATE_D0) {
  device_printf(self, "chip is in D%d mode "
      "-- setting to D0\n", pci_get_powerstate(self));
  reg = pci_read_config(self, PCI_CBMEM, 4);
  int_line = pci_read_config(self, PCIR_INTLINE, 4);
  pci_set_powerstate(self, PCI_POWERSTATE_D0);
  pci_write_config(self, PCI_CBMEM, reg, 4);
  pci_write_config(self, PCIR_INTLINE, int_line, 4);
 }
 return (0);
}
