
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct pci_conf {int pc_hdr; int pc_sel; } ;


 int PCICAP_ID ;
 int PCICAP_NEXTPTR ;
 int PCIM_HDRTYPE ;



 int PCIM_STATUS_CAPPRESENT ;
 int PCIR_CAP_PTR ;
 int PCIR_CAP_PTR_2 ;
 int PCIR_STATUS ;
 int cap_agp (int,struct pci_conf*,int) ;
 int cap_debug (int,struct pci_conf*,int) ;
 int cap_ea (int,struct pci_conf*,int) ;
 int cap_express (int,struct pci_conf*,int) ;
 int cap_ht (int,struct pci_conf*,int) ;
 int cap_msi (int,struct pci_conf*,int) ;
 int cap_msix (int,struct pci_conf*,int) ;
 int cap_pciaf (int,struct pci_conf*,int) ;
 int cap_pcix (int,struct pci_conf*,int) ;
 int cap_power (int,struct pci_conf*,int) ;
 int cap_sata (int,struct pci_conf*,int) ;
 int cap_subvendor (int,struct pci_conf*,int) ;
 int cap_vendor (int,struct pci_conf*,int) ;
 int cap_vpd (int,struct pci_conf*,int) ;
 int errx (int,char*) ;
 int list_ecaps (int,struct pci_conf*) ;
 int printf (char*,...) ;
 void* read_config (int,int *,int,int) ;

void
list_caps(int fd, struct pci_conf *p)
{
 int express;
 uint16_t sta;
 uint8_t ptr, cap;


 sta = read_config(fd, &p->pc_sel, PCIR_STATUS, 2);
 if (!(sta & PCIM_STATUS_CAPPRESENT))
  return;

 switch (p->pc_hdr & PCIM_HDRTYPE) {
 case 142:
 case 144:
  ptr = PCIR_CAP_PTR;
  break;
 case 143:
  ptr = PCIR_CAP_PTR_2;
  break;
 default:
  errx(1, "list_caps: bad header type");
 }


 express = 0;
 ptr = read_config(fd, &p->pc_sel, ptr, 1);
 while (ptr != 0 && ptr != 0xff) {
  cap = read_config(fd, &p->pc_sel, ptr + PCICAP_ID, 1);
  printf("    cap %02x[%02x] = ", cap, ptr);
  switch (cap) {
  case 132:
   cap_power(fd, p, ptr);
   break;
  case 141:
   cap_agp(fd, p, ptr);
   break;
  case 128:
   cap_vpd(fd, p, ptr);
   break;
  case 136:
   cap_msi(fd, p, ptr);
   break;
  case 133:
   cap_pcix(fd, p, ptr);
   break;
  case 137:
   cap_ht(fd, p, ptr);
   break;
  case 129:
   cap_vendor(fd, p, ptr);
   break;
  case 140:
   cap_debug(fd, p, ptr);
   break;
  case 130:
   cap_subvendor(fd, p, ptr);
   break;
  case 138:
   express = 1;
   cap_express(fd, p, ptr);
   break;
  case 135:
   cap_msix(fd, p, ptr);
   break;
  case 131:
   cap_sata(fd, p, ptr);
   break;
  case 134:
   cap_pciaf(fd, p, ptr);
   break;
  case 139:
   cap_ea(fd, p, ptr);
   break;
  default:
   printf("unknown");
   break;
  }
  printf("\n");
  ptr = read_config(fd, &p->pc_sel, ptr + PCICAP_NEXTPTR, 1);
 }

 if (express)
  list_ecaps(fd, p);
}
