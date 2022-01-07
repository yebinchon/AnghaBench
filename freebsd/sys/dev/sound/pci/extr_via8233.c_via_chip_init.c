
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int device_t ;


 int DELAY (int) ;
 int ENXIO ;
 int VIA_PCI_ACLINK_C00_READY ;
 int VIA_PCI_ACLINK_CTRL ;
 int VIA_PCI_ACLINK_DESIRED ;
 int VIA_PCI_ACLINK_EN ;
 int VIA_PCI_ACLINK_NRST ;
 int VIA_PCI_ACLINK_STAT ;
 int VIA_PCI_ACLINK_SYNC ;
 int device_printf (int ,char*,int) ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static int
via_chip_init(device_t dev)
{
 uint32_t data, cnt;


 data = pci_read_config(dev, VIA_PCI_ACLINK_STAT, 1);

 if ((data & VIA_PCI_ACLINK_C00_READY) == 0) {


  pci_write_config(dev, VIA_PCI_ACLINK_CTRL,
      VIA_PCI_ACLINK_EN, 1);

  DELAY(100);

  pci_write_config(dev, VIA_PCI_ACLINK_CTRL,
      VIA_PCI_ACLINK_EN | VIA_PCI_ACLINK_NRST, 1);

  DELAY(5);

  pci_write_config(dev, VIA_PCI_ACLINK_CTRL,
      VIA_PCI_ACLINK_EN, 1);
 } else {


  pci_write_config(dev, VIA_PCI_ACLINK_CTRL,
      VIA_PCI_ACLINK_EN, 1);
  DELAY(100);

  pci_write_config(dev, VIA_PCI_ACLINK_CTRL,
      VIA_PCI_ACLINK_EN | VIA_PCI_ACLINK_SYNC, 1);

  DELAY(5);

  pci_write_config(dev, VIA_PCI_ACLINK_CTRL,
      VIA_PCI_ACLINK_EN, 1);

  DELAY(5);
 }


 pci_write_config(dev, VIA_PCI_ACLINK_CTRL, VIA_PCI_ACLINK_DESIRED, 1);


 for (cnt = 0; cnt < 2000; cnt++) {
  data = pci_read_config(dev, VIA_PCI_ACLINK_STAT, 1);
  if (data & VIA_PCI_ACLINK_C00_READY)
   return (0);
  DELAY(5000);
 }
 device_printf(dev, "primary codec not ready (cnt = 0x%02x)\n", cnt);
 return (ENXIO);
}
