
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pci_conf {int pc_sel; } ;


 int PCIM_PCIAFCAP_FLR ;
 int PCIM_PCIAFCAP_TP ;
 int PCIR_PCIAF_CAP ;
 int printf (char*,char*,char*) ;
 int read_config (int,int *,int,int) ;

__attribute__((used)) static void
cap_pciaf(int fd, struct pci_conf *p, uint8_t ptr)
{
 uint8_t cap;

 cap = read_config(fd, &p->pc_sel, ptr + PCIR_PCIAF_CAP, 1);
 printf("PCI Advanced Features:%s%s",
     cap & PCIM_PCIAFCAP_FLR ? " FLR" : "",
     cap & PCIM_PCIAFCAP_TP ? " TP" : "");
}
