
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int PCIM_BAR_MEM_PREFETCH ;
 scalar_t__ PCI_BAR_IO (int) ;

__attribute__((used)) static const char *
pci_maptype(uint64_t mapreg)
{

 if (PCI_BAR_IO(mapreg))
  return ("I/O Port");
 if (mapreg & PCIM_BAR_MEM_PREFETCH)
  return ("Prefetchable Memory");
 return ("Memory");
}
