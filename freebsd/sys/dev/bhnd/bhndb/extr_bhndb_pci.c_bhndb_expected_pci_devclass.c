
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int bhnd_devclass_t ;


 int BHND_DEVCLASS_PCI ;
 int BHND_DEVCLASS_PCIE ;
 scalar_t__ bhndb_is_pcie_attached (int ) ;

__attribute__((used)) static bhnd_devclass_t
bhndb_expected_pci_devclass(device_t dev)
{
 if (bhndb_is_pcie_attached(dev))
  return (BHND_DEVCLASS_PCIE);
 else
  return (BHND_DEVCLASS_PCI);
}
