
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_conf {int pc_sel; } ;


 int PCI_CBBMEMBASE (int ) ;
 int PCI_CBBMEMLIMIT (int ) ;
 int print_window (int,char*,int,int ,int ) ;
 int read_config (int,int *,int,int) ;

__attribute__((used)) static void
print_cardbus_mem_window(int fd, struct pci_conf *p, int basereg, int limitreg,
    bool prefetch)
{

 print_window(basereg, prefetch ? "Prefetchable Memory" : "Memory", 32,
     PCI_CBBMEMBASE(read_config(fd, &p->pc_sel, basereg, 4)),
     PCI_CBBMEMLIMIT(read_config(fd, &p->pc_sel, limitreg, 4)));
}
