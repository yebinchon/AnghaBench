
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct pci_devinst {int dummy; } ;
struct msicap {int dummy; } ;
typedef int msicap ;


 int pci_populate_msicap (struct msicap*,int,int) ;
 int pci_set_cfgdata8 (struct pci_devinst*,int,int ) ;
 int roundup (int,int) ;

__attribute__((used)) static int
passthru_add_msicap(struct pci_devinst *pi, int msgnum, int nextptr)
{
 int capoff, i;
 struct msicap msicap;
 u_char *capdata;

 pci_populate_msicap(&msicap, msgnum, nextptr);







 capoff = 256 - roundup(sizeof(msicap), 4);
 capdata = (u_char *)&msicap;
 for (i = 0; i < sizeof(msicap); i++)
  pci_set_cfgdata8(pi, capoff + i, capdata[i]);

 return (capoff);
}
