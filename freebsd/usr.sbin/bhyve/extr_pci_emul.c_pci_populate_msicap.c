
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msicap {int nextptr; int msgctrl; int capid; } ;


 int PCIM_MSICTRL_64BIT ;
 int PCIY_MSI ;
 int assert (int) ;
 int bzero (struct msicap*,int) ;
 int ffs (int) ;

void
pci_populate_msicap(struct msicap *msicap, int msgnum, int nextptr)
{
 int mmc;


 assert((msgnum & (msgnum - 1)) == 0 && msgnum >= 1 && msgnum <= 32);
 mmc = ffs(msgnum) - 1;

 bzero(msicap, sizeof(struct msicap));
 msicap->capid = PCIY_MSI;
 msicap->nextptr = nextptr;
 msicap->msgctrl = PCIM_MSICTRL_64BIT | (mmc << 1);
}
