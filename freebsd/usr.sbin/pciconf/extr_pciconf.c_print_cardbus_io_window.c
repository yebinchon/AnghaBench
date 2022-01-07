
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pci_conf {int pc_sel; } ;


 int PCIM_CBBIO_32 ;
 int PCIM_CBBIO_MASK ;
 int PCI_CBBIOBASE (int) ;
 int print_window (int,char*,int,int,int) ;
 int read_config (int,int *,int,int) ;

__attribute__((used)) static void
print_cardbus_io_window(int fd, struct pci_conf *p, int basereg, int limitreg)
{
 uint32_t base, limit;
 uint32_t val;
 int range;

 val = read_config(fd, &p->pc_sel, basereg, 2);
 if ((val & PCIM_CBBIO_MASK) == PCIM_CBBIO_32) {
  base = PCI_CBBIOBASE(read_config(fd, &p->pc_sel, basereg, 4));
  limit = PCI_CBBIOBASE(read_config(fd, &p->pc_sel, limitreg, 4));
  range = 32;
 } else {
  base = PCI_CBBIOBASE(val);
  limit = PCI_CBBIOBASE(read_config(fd, &p->pc_sel, limitreg, 2));
  range = 16;
 }
 print_window(basereg, "I/O Port", range, base, limit);
}
