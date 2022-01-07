
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct pcicfg_iov {struct pci_iov_bar* iov_bar; } ;
struct pci_iov_bar {int bar_size; int bar_shift; int * res; } ;
struct TYPE_3__ {int index; } ;
struct TYPE_4__ {int dev; TYPE_1__ vf; } ;
struct pci_devinfo {TYPE_2__ cfg; } ;


 int PCIR_BAR (int) ;
 int PCIR_MAX_BAR_0 ;
 int pci_add_bar (int ,int ,scalar_t__,int ) ;
 scalar_t__ rman_get_start (int *) ;

__attribute__((used)) static void
pci_iov_add_bars(struct pcicfg_iov *iov, struct pci_devinfo *dinfo)
{
 struct pci_iov_bar *bar;
 uint64_t bar_start;
 int i;

 for (i = 0; i <= PCIR_MAX_BAR_0; i++) {
  bar = &iov->iov_bar[i];
  if (bar->res != ((void*)0)) {
   bar_start = rman_get_start(bar->res) +
       dinfo->cfg.vf.index * bar->bar_size;

   pci_add_bar(dinfo->cfg.dev, PCIR_BAR(i), bar_start,
       bar->bar_shift);
  }
 }
}
