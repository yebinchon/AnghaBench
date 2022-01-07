
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct pci_conf {int pc_sel; } ;


 int PCIM_VC_CAP1_EXT_COUNT ;
 int PCIM_VC_CAP1_LOWPRI_EXT_COUNT ;
 scalar_t__ PCIR_VC_CAP1 ;
 int printf (char*,...) ;
 int read_config (int,int *,scalar_t__,int) ;

__attribute__((used)) static void
ecap_vc(int fd, struct pci_conf *p, uint16_t ptr, uint8_t ver)
{
 uint32_t cap1;

 printf("VC %d", ver);
 if (ver < 1)
  return;
 cap1 = read_config(fd, &p->pc_sel, ptr + PCIR_VC_CAP1, 4);
 printf(" max VC%d", cap1 & PCIM_VC_CAP1_EXT_COUNT);
 if ((cap1 & PCIM_VC_CAP1_LOWPRI_EXT_COUNT) != 0)
  printf(" lowpri VC0-VC%d",
      (cap1 & PCIM_VC_CAP1_LOWPRI_EXT_COUNT) >> 4);
 printf("\n");
}
