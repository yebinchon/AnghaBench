
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int PCIY_EXPRESS ;
 int device_get_parent (int ) ;
 scalar_t__ pci_find_cap (int ,int ,int*) ;

__attribute__((used)) static bool
bhndb_is_pcie_attached(device_t dev)
{
 int reg;

 if (pci_find_cap(device_get_parent(dev), PCIY_EXPRESS, &reg) == 0)
  return (1);

 return (0);
}
