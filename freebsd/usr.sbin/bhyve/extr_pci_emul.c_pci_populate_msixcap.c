
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct msixcap {int msgctrl; int table_info; int pba_info; int capid; } ;


 int PCIM_MSIX_BIR_MASK ;
 int PCIY_MSIX ;
 int assert (int) ;
 int bzero (struct msixcap*,int) ;

__attribute__((used)) static void
pci_populate_msixcap(struct msixcap *msixcap, int msgnum, int barnum,
       uint32_t msix_tab_size)
{

 assert(msix_tab_size % 4096 == 0);

 bzero(msixcap, sizeof(struct msixcap));
 msixcap->capid = PCIY_MSIX;






 msixcap->msgctrl = msgnum - 1;






 msixcap->table_info = barnum & PCIM_MSIX_BIR_MASK;
 msixcap->pba_info = msix_tab_size | (barnum & PCIM_MSIX_BIR_MASK);
}
