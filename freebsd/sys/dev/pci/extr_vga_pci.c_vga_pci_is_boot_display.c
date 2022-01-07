
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int device_t ;


 int PCIB_BCR_VGA_ENABLE ;
 scalar_t__ PCIC_DISPLAY ;
 scalar_t__ PCIC_OLD ;
 int PCIM_CMD_INTxDIS ;
 int PCIM_CMD_MEMEN ;
 int PCIM_CMD_PORTEN ;
 int PCIR_BRIDGECTL_1 ;
 int PCIR_COMMAND ;
 scalar_t__ PCIS_OLD_VGA ;
 scalar_t__ devclass_find (char*) ;
 scalar_t__ device_get_devclass (int ) ;
 int device_get_parent (int ) ;
 int device_get_unit (int ) ;
 int device_set_flags (int ,int) ;
 scalar_t__ pci_get_class (int ) ;
 scalar_t__ pci_get_subclass (int ) ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;
 int vga_pci_default_unit ;

int
vga_pci_is_boot_display(device_t dev)
{
 int unit;
 device_t pcib;
 uint16_t config;


 if ((pci_get_class(dev) != PCIC_DISPLAY &&
     (pci_get_class(dev) != PCIC_OLD ||
      pci_get_subclass(dev) != PCIS_OLD_VGA)))
  return (0);

 unit = device_get_unit(dev);

 if (vga_pci_default_unit >= 0) {





  return (vga_pci_default_unit == unit);
 }
 pcib = device_get_parent(device_get_parent(dev));
 if (device_get_devclass(device_get_parent(pcib)) ==
     devclass_find("pci")) {




  config = pci_read_config(pcib, PCIR_BRIDGECTL_1, 2);
  if ((config & PCIB_BCR_VGA_ENABLE) == 0)
   return (0);
 }

 config = pci_read_config(dev, PCIR_COMMAND, 2);
 if ((config & (PCIM_CMD_PORTEN | PCIM_CMD_MEMEN)) == 0)
  return (0);






 pci_write_config(dev, PCIR_COMMAND, config | PCIM_CMD_INTxDIS, 2);


 vga_pci_default_unit = unit;
 device_set_flags(dev, 1);

 return (1);
}
