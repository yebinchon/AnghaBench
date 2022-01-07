
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int pci_addr_t ;


 int PCIM_BAR_IO_BASE ;
 int PCIM_BAR_MEM_BASE ;
 scalar_t__ PCI_BAR_MEM (int) ;

__attribute__((used)) static pci_addr_t
pci_mapbase(uint64_t mapreg)
{

 if (PCI_BAR_MEM(mapreg))
  return (mapreg & PCIM_BAR_MEM_BASE);
 else
  return (mapreg & PCIM_BAR_IO_BASE);
}
