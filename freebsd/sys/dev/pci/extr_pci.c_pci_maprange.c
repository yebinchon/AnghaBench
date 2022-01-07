
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;





 int PCIM_BAR_MEM_TYPE ;
 scalar_t__ PCI_BAR_IO (int) ;

__attribute__((used)) static int
pci_maprange(uint64_t mapreg)
{
 int ln2range = 0;

 if (PCI_BAR_IO(mapreg))
  ln2range = 32;
 else
  switch (mapreg & PCIM_BAR_MEM_TYPE) {
  case 129:
   ln2range = 32;
   break;
  case 130:
   ln2range = 20;
   break;
  case 128:
   ln2range = 64;
   break;
  }
 return (ln2range);
}
