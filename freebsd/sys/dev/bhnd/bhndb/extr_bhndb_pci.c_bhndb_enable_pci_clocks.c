
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int device_t ;


 int BHNDB_PCI_GPIO_IN ;
 int BHNDB_PCI_GPIO_OUT ;
 int BHNDB_PCI_GPIO_OUTEN ;
 int BHNDB_PCI_GPIO_PLL_OFF ;
 int BHNDB_PCI_GPIO_XTAL_ON ;
 int DELAY (int) ;
 int PCIM_STATUS_STABORT ;
 int PCIR_STATUS ;
 scalar_t__ bhndb_is_pcie_attached (int ) ;
 int device_get_parent (int ) ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static int
bhndb_enable_pci_clocks(device_t dev)
{
 device_t pci_dev;
 uint32_t gpio_in, gpio_out, gpio_en;
 uint32_t gpio_flags;
 uint16_t pci_status;

 pci_dev = device_get_parent(dev);


 if (bhndb_is_pcie_attached(dev))
  return (0);


 gpio_in = pci_read_config(pci_dev, BHNDB_PCI_GPIO_IN, 4);
 if (gpio_in & BHNDB_PCI_GPIO_XTAL_ON)
  return (0);


 gpio_out = pci_read_config(pci_dev, BHNDB_PCI_GPIO_OUT, 4);
 gpio_en = pci_read_config(pci_dev, BHNDB_PCI_GPIO_OUTEN, 4);


 gpio_flags = (BHNDB_PCI_GPIO_PLL_OFF|BHNDB_PCI_GPIO_XTAL_ON);
 gpio_out |= gpio_flags;
 gpio_en |= gpio_flags;

 pci_write_config(pci_dev, BHNDB_PCI_GPIO_OUT, gpio_out, 4);
 pci_write_config(pci_dev, BHNDB_PCI_GPIO_OUTEN, gpio_en, 4);
 DELAY(1000);


 gpio_out &= ~BHNDB_PCI_GPIO_PLL_OFF;
 pci_write_config(pci_dev, BHNDB_PCI_GPIO_OUT, gpio_out, 4);
 DELAY(5000);


 pci_status = pci_read_config(pci_dev, PCIR_STATUS, 2);
 pci_status &= ~PCIM_STATUS_STABORT;
 pci_write_config(pci_dev, PCIR_STATUS, pci_status, 2);

 return (0);
}
