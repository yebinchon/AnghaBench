
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct pci_conf {int pc_sel; } ;


 int CBB_BCR_ISA_ENABLE ;
 int CBB_BCR_PREFETCH_0_ENABLE ;
 int CBB_BCR_PREFETCH_1_ENABLE ;
 int CBB_BCR_VGA_ENABLE ;
 int PCIR_BRIDGECTL_2 ;
 int PCIR_IOBASE0_2 ;
 int PCIR_IOBASE1_2 ;
 int PCIR_IOLIMIT0_2 ;
 int PCIR_IOLIMIT1_2 ;
 int PCIR_MEMBASE0_2 ;
 int PCIR_MEMBASE1_2 ;
 int PCIR_MEMLIMIT0_2 ;
 int PCIR_MEMLIMIT1_2 ;
 int print_cardbus_io_window (int,struct pci_conf*,int ,int ) ;
 int print_cardbus_mem_window (int,struct pci_conf*,int ,int ,int) ;
 int print_special_decode (int,int,int) ;
 int read_config (int,int *,int ,int) ;

__attribute__((used)) static void
print_cardbus_windows(int fd, struct pci_conf *p)
{
 uint16_t bctl;

 bctl = read_config(fd, &p->pc_sel, PCIR_BRIDGECTL_2, 2);
 print_cardbus_mem_window(fd, p, PCIR_MEMBASE0_2, PCIR_MEMLIMIT0_2,
     bctl & CBB_BCR_PREFETCH_0_ENABLE);
 print_cardbus_mem_window(fd, p, PCIR_MEMBASE1_2, PCIR_MEMLIMIT1_2,
     bctl & CBB_BCR_PREFETCH_1_ENABLE);
 print_cardbus_io_window(fd, p, PCIR_IOBASE0_2, PCIR_IOLIMIT0_2);
 print_cardbus_io_window(fd, p, PCIR_IOBASE1_2, PCIR_IOLIMIT1_2);
 print_special_decode(bctl & CBB_BCR_ISA_ENABLE,
     bctl & CBB_BCR_VGA_ENABLE, 0);
}
