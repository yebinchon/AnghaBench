
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pci_devinst {scalar_t__ pi_cfgdata; } ;


 int PCI_REGMAX ;
 int assert (int) ;

__attribute__((used)) static __inline uint8_t
pci_get_cfgdata8(struct pci_devinst *pi, int offset)
{
 assert(offset <= PCI_REGMAX);
 return (*(uint8_t *)(pi->pi_cfgdata + offset));
}
