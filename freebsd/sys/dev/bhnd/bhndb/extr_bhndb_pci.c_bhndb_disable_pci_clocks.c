
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int device_t ;


 int BHNDB_PCI_GPIO_OUT ;
 int BHNDB_PCI_GPIO_OUTEN ;
 int BHNDB_PCI_GPIO_PLL_OFF ;
 int BHNDB_PCI_GPIO_XTAL_ON ;
 scalar_t__ bhndb_is_pcie_attached (int ) ;
 int device_get_parent (int ) ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static int
bhndb_disable_pci_clocks(device_t dev)
{
 device_t pci_dev;
 uint32_t gpio_out, gpio_en;

 pci_dev = device_get_parent(dev);


 if (bhndb_is_pcie_attached(dev))
  return (0);


 gpio_out = pci_read_config(pci_dev, BHNDB_PCI_GPIO_OUT, 4);
 gpio_en = pci_read_config(pci_dev, BHNDB_PCI_GPIO_OUTEN, 4);


 gpio_out &= ~BHNDB_PCI_GPIO_XTAL_ON;
 gpio_out |= BHNDB_PCI_GPIO_PLL_OFF;
 pci_write_config(pci_dev, BHNDB_PCI_GPIO_OUT, gpio_out, 4);


 gpio_en |= (BHNDB_PCI_GPIO_PLL_OFF|BHNDB_PCI_GPIO_XTAL_ON);
 pci_write_config(pci_dev, BHNDB_PCI_GPIO_OUTEN, gpio_en, 4);

 return (0);
}
