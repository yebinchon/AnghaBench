
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct pci_conf {int pc_hdr; int pc_sel; } ;


 int PCIM_HDRTYPE ;
 int PCIXM_STATUS_133CAP ;
 int PCIXM_STATUS_266CAP ;
 int PCIXM_STATUS_533CAP ;
 int PCIXM_STATUS_64BIT ;
 int PCIXM_STATUS_MAX_READ ;




 int PCIXM_STATUS_MAX_SPLITS ;
 scalar_t__ PCIXR_STATUS ;
 int printf (char*,...) ;
 int read_config (int,int *,scalar_t__,int) ;

__attribute__((used)) static void
cap_pcix(int fd, struct pci_conf *p, uint8_t ptr)
{
 uint32_t status;
 int comma, max_splits, max_burst_read;

 status = read_config(fd, &p->pc_sel, ptr + PCIXR_STATUS, 4);
 printf("PCI-X ");
 if (status & PCIXM_STATUS_64BIT)
  printf("64-bit ");
 if ((p->pc_hdr & PCIM_HDRTYPE) == 1)
  printf("bridge ");
 if ((p->pc_hdr & PCIM_HDRTYPE) != 1 || (status & (PCIXM_STATUS_133CAP |
     PCIXM_STATUS_266CAP | PCIXM_STATUS_533CAP)) != 0)
  printf("supports");
 comma = 0;
 if (status & PCIXM_STATUS_133CAP) {
  printf(" 133MHz");
  comma = 1;
 }
 if (status & PCIXM_STATUS_266CAP) {
  printf("%s 266MHz", comma ? "," : "");
  comma = 1;
 }
 if (status & PCIXM_STATUS_533CAP) {
  printf("%s 533MHz", comma ? "," : "");
  comma = 1;
 }
 if ((p->pc_hdr & PCIM_HDRTYPE) == 1)
  return;
 max_burst_read = 0;
 switch (status & PCIXM_STATUS_MAX_READ) {
 case 136:
  max_burst_read = 512;
  break;
 case 139:
  max_burst_read = 1024;
  break;
 case 138:
  max_burst_read = 2048;
  break;
 case 137:
  max_burst_read = 4096;
  break;
 }
 max_splits = 0;
 switch (status & PCIXM_STATUS_MAX_SPLITS) {
 case 135:
  max_splits = 1;
  break;
 case 132:
  max_splits = 2;
  break;
 case 131:
  max_splits = 3;
  break;
 case 129:
  max_splits = 4;
  break;
 case 128:
  max_splits = 8;
  break;
 case 134:
  max_splits = 12;
  break;
 case 133:
  max_splits = 16;
  break;
 case 130:
  max_splits = 32;
  break;
 }
 printf("%s %d burst read, %d split transaction%s", comma ? "," : "",
     max_burst_read, max_splits, max_splits == 1 ? "" : "s");
}
