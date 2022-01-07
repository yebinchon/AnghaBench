
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct pci_conf {scalar_t__ pc_progif; int pc_device; int pc_vendor; int pc_sel; } ;


 int PCIB_BCR_ISA_ENABLE ;
 int PCIB_BCR_VGA_ENABLE ;
 int PCIM_BRIO_32 ;
 int PCIM_BRIO_MASK ;
 int PCIM_BRPM_64 ;
 int PCIM_BRPM_MASK ;
 scalar_t__ PCIP_BRIDGE_PCI_SUBTRACTIVE ;
 int PCIR_BRIDGECTL_1 ;
 int PCIR_IOBASEH_1 ;
 int PCIR_IOBASEL_1 ;
 int PCIR_IOLIMITH_1 ;
 int PCIR_IOLIMITL_1 ;
 int PCIR_MEMBASE_1 ;
 int PCIR_MEMLIMIT_1 ;
 int PCIR_PMBASEH_1 ;
 int PCIR_PMBASEL_1 ;
 int PCIR_PMLIMITH_1 ;
 int PCIR_PMLIMITL_1 ;
 int PCI_PPBIOBASE (int,int) ;
 int PCI_PPBIOLIMIT (int,int) ;
 int PCI_PPBMEMBASE (int,int) ;
 int PCI_PPBMEMLIMIT (int,int) ;
 int print_special_decode (int,int,int) ;
 int print_window (int ,char*,int,int ,int ) ;
 int read_config (int,int *,int ,int) ;

__attribute__((used)) static void
print_bridge_windows(int fd, struct pci_conf *p)
{
 uint64_t base, limit;
 uint32_t val;
 uint16_t bctl;
 bool subtractive;
 int range;







 val = read_config(fd, &p->pc_sel, PCIR_IOBASEL_1, 1);
 if (val != 0 || read_config(fd, &p->pc_sel, PCIR_IOLIMITL_1, 1) != 0) {
  if ((val & PCIM_BRIO_MASK) == PCIM_BRIO_32) {
   base = PCI_PPBIOBASE(
       read_config(fd, &p->pc_sel, PCIR_IOBASEH_1, 2),
       val);
   limit = PCI_PPBIOLIMIT(
       read_config(fd, &p->pc_sel, PCIR_IOLIMITH_1, 2),
       read_config(fd, &p->pc_sel, PCIR_IOLIMITL_1, 1));
   range = 32;
  } else {
   base = PCI_PPBIOBASE(0, val);
   limit = PCI_PPBIOLIMIT(0,
       read_config(fd, &p->pc_sel, PCIR_IOLIMITL_1, 1));
   range = 16;
  }
  print_window(PCIR_IOBASEL_1, "I/O Port", range, base, limit);
 }

 base = PCI_PPBMEMBASE(0,
     read_config(fd, &p->pc_sel, PCIR_MEMBASE_1, 2));
 limit = PCI_PPBMEMLIMIT(0,
     read_config(fd, &p->pc_sel, PCIR_MEMLIMIT_1, 2));
 print_window(PCIR_MEMBASE_1, "Memory", 32, base, limit);

 val = read_config(fd, &p->pc_sel, PCIR_PMBASEL_1, 2);
 if (val != 0 || read_config(fd, &p->pc_sel, PCIR_PMLIMITL_1, 2) != 0) {
  if ((val & PCIM_BRPM_MASK) == PCIM_BRPM_64) {
   base = PCI_PPBMEMBASE(
       read_config(fd, &p->pc_sel, PCIR_PMBASEH_1, 4),
       val);
   limit = PCI_PPBMEMLIMIT(
       read_config(fd, &p->pc_sel, PCIR_PMLIMITH_1, 4),
       read_config(fd, &p->pc_sel, PCIR_PMLIMITL_1, 2));
   range = 64;
  } else {
   base = PCI_PPBMEMBASE(0, val);
   limit = PCI_PPBMEMLIMIT(0,
       read_config(fd, &p->pc_sel, PCIR_PMLIMITL_1, 2));
   range = 32;
  }
  print_window(PCIR_PMBASEL_1, "Prefetchable Memory", range, base,
      limit);
 }





 subtractive = p->pc_progif == PCIP_BRIDGE_PCI_SUBTRACTIVE;
 switch (p->pc_device << 16 | p->pc_vendor) {
 case 0xa002177d:
 case 0x124b8086:
 case 0x060513d7:
  subtractive = 1;
 }
 if (p->pc_vendor == 0x8086 && (p->pc_device & 0xff00) == 0x2400)
  subtractive = 1;

 bctl = read_config(fd, &p->pc_sel, PCIR_BRIDGECTL_1, 2);
 print_special_decode(bctl & PCIB_BCR_ISA_ENABLE,
     bctl & PCIB_BCR_VGA_ENABLE, subtractive);
}
