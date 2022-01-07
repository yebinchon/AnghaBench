
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct pci_conf {int pc_sel; } ;


 scalar_t__ PCIR_EXTCAP ;
 scalar_t__ PCI_EXTCAP_ID (int) ;
 scalar_t__ PCI_EXTCAP_NEXTPTR (int) ;
 int read_config (int,int *,scalar_t__,int) ;

uint16_t
pcie_find_cap(int fd, struct pci_conf *p, uint16_t id)
{
 uint32_t ecap;
 uint16_t ptr;

 ptr = PCIR_EXTCAP;
 ecap = read_config(fd, &p->pc_sel, ptr, 4);
 if (ecap == 0xffffffff || ecap == 0)
  return (0);
 for (;;) {
  if (PCI_EXTCAP_ID(ecap) == id)
   return (ptr);
  ptr = PCI_EXTCAP_NEXTPTR(ecap);
  if (ptr == 0)
   break;
  ecap = read_config(fd, &p->pc_sel, ptr, 4);
 }
 return (0);
}
