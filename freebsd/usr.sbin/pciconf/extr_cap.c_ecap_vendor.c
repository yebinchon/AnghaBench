
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct pci_conf {int pc_sel; } ;


 int printf (char*,int) ;
 int read_config (int,int *,scalar_t__,int) ;

__attribute__((used)) static void
ecap_vendor(int fd, struct pci_conf *p, uint16_t ptr, uint8_t ver)
{
 uint32_t val;

 printf("Vendor %d", ver);
 if (ver < 1)
  return;
 val = read_config(fd, &p->pc_sel, ptr + 4, 4);
 printf(" ID %d\n", val & 0xffff);
}
