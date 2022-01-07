
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
 void* read_config (int,int *,int,int) ;

uint8_t
pci_find_cap(int fd, struct pci_conf *p, uint8_t id)
{
 uint16_t sta;
 uint8_t ptr, cap;


 sta = read_config(fd, &p->pc_sel, PCIR_STATUS, 2);
 if (!(sta & PCIM_STATUS_CAPPRESENT))
  return (0);

 switch (p->pc_hdr & PCIM_HDRTYPE) {
 case 128:
 case 130:
  ptr = PCIR_CAP_PTR;
  break;
 case 129:
  ptr = PCIR_CAP_PTR_2;
  break;
 default:
  return (0);
 }

 ptr = read_config(fd, &p->pc_sel, ptr, 1);
 while (ptr != 0 && ptr != 0xff) {
  cap = read_config(fd, &p->pc_sel, ptr + PCICAP_ID, 1);
  if (cap == id)
   return (ptr);
  ptr = read_config(fd, &p->pc_sel, ptr + PCICAP_NEXTPTR, 1);
 }
 return (0);
}
