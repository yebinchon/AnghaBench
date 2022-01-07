
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct pci_conf {int pc_sel; } ;


 scalar_t__ PCIR_SERIAL_HIGH ;
 scalar_t__ PCIR_SERIAL_LOW ;
 int printf (char*,int,...) ;
 int read_config (int,int *,scalar_t__,int) ;

__attribute__((used)) static void
ecap_sernum(int fd, struct pci_conf *p, uint16_t ptr, uint8_t ver)
{
 uint32_t high, low;

 printf("Serial %d", ver);
 if (ver < 1)
  return;
 low = read_config(fd, &p->pc_sel, ptr + PCIR_SERIAL_LOW, 4);
 high = read_config(fd, &p->pc_sel, ptr + PCIR_SERIAL_HIGH, 4);
 printf(" %08x%08x\n", high, low);
}
