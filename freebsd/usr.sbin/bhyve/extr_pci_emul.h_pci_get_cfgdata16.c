
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct pci_devinst {scalar_t__ pi_cfgdata; } ;


 int PCI_REGMAX ;
 int assert (int) ;

__attribute__((used)) static __inline uint16_t
pci_get_cfgdata16(struct pci_devinst *pi, int offset)
{
 assert(offset <= (PCI_REGMAX - 1) && (offset & 1) == 0);
 return (*(uint16_t *)(pi->pi_cfgdata + offset));
}
