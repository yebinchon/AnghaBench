
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pci_devinst {scalar_t__ pi_cfgdata; } ;


 int PCI_REGMAX ;
 int assert (int) ;

__attribute__((used)) static __inline void
pci_set_cfgdata8(struct pci_devinst *pi, int offset, uint8_t val)
{
 assert(offset <= PCI_REGMAX);
 *(uint8_t *)(pi->pi_cfgdata + offset) = val;
}
