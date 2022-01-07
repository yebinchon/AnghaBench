
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct pci_conf {int pc_sel; } ;


 scalar_t__ PCIR_AER_COR_STATUS ;
 scalar_t__ PCIR_AER_UC_SEVERITY ;
 scalar_t__ PCIR_AER_UC_STATUS ;
 int bitcount32 (int) ;
 int printf (char*,int) ;
 int read_config (int,int *,scalar_t__,int) ;

__attribute__((used)) static void
ecap_aer(int fd, struct pci_conf *p, uint16_t ptr, uint8_t ver)
{
 uint32_t sta, mask;

 printf("AER %d", ver);
 if (ver < 1)
  return;
 sta = read_config(fd, &p->pc_sel, ptr + PCIR_AER_UC_STATUS, 4);
 mask = read_config(fd, &p->pc_sel, ptr + PCIR_AER_UC_SEVERITY, 4);
 printf(" %d fatal", bitcount32(sta & mask));
 printf(" %d non-fatal", bitcount32(sta & ~mask));
 sta = read_config(fd, &p->pc_sel, ptr + PCIR_AER_COR_STATUS, 4);
 printf(" %d corrected\n", bitcount32(sta));
}
