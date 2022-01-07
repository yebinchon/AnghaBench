
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pci_devinst {int dummy; } ;


 int CFGWRITE (struct pci_devinst*,int,int ,int) ;

void
pciecap_cfgwrite(struct pci_devinst *pi, int capoff, int offset,
   int bytes, uint32_t val)
{


 CFGWRITE(pi, offset, val, bytes);
}
