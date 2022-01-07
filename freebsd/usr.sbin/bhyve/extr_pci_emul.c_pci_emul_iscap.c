
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct pci_devinst {int pi_capend; } ;


 int CAP_START_OFFSET ;
 int PCIM_STATUS_CAPPRESENT ;
 int PCIR_STATUS ;
 int pci_get_cfgdata16 (struct pci_devinst*,int ) ;

__attribute__((used)) static int
pci_emul_iscap(struct pci_devinst *pi, int offset)
{
 uint16_t sts;

 sts = pci_get_cfgdata16(pi, PCIR_STATUS);
 if ((sts & PCIM_STATUS_CAPPRESENT) != 0) {
  if (offset >= CAP_START_OFFSET && offset <= pi->pi_capend)
   return (1);
 }
 return (0);
}
