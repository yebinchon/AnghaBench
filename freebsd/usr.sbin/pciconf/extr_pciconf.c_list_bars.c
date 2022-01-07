
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_conf {int pc_hdr; } ;


 int PCIM_HDRTYPE ;



 int PCIR_BAR (int) ;
 int PCIR_MAX_BAR_0 ;
 int PCIR_MAX_BAR_1 ;
 int PCIR_MAX_BAR_2 ;
 int print_bar (int,struct pci_conf*,char*,int ) ;

__attribute__((used)) static void
list_bars(int fd, struct pci_conf *p)
{
 int i, max;

 switch (p->pc_hdr & PCIM_HDRTYPE) {
 case 128:
  max = PCIR_MAX_BAR_0;
  break;
 case 130:
  max = PCIR_MAX_BAR_1;
  break;
 case 129:
  max = PCIR_MAX_BAR_2;
  break;
 default:
  return;
 }

 for (i = 0; i <= max; i++)
  print_bar(fd, p, "bar   ", PCIR_BAR(i));
}
