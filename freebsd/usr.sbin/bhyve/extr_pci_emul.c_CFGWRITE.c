
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pci_devinst {int dummy; } ;


 int pci_set_cfgdata16 (struct pci_devinst*,int,int ) ;
 int pci_set_cfgdata32 (struct pci_devinst*,int,int ) ;
 int pci_set_cfgdata8 (struct pci_devinst*,int,int ) ;

__attribute__((used)) static __inline void
CFGWRITE(struct pci_devinst *pi, int coff, uint32_t val, int bytes)
{

 if (bytes == 1)
  pci_set_cfgdata8(pi, coff, val);
 else if (bytes == 2)
  pci_set_cfgdata16(pi, coff, val);
 else
  pci_set_cfgdata32(pi, coff, val);
}
