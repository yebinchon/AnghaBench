
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int bugs; scalar_t__ pci_cachesize; } ;


 int AHC_PCI_MWI_BUG ;

__attribute__((used)) static int
ahc_patch14_func(struct ahc_softc *ahc)
{
 return ((ahc->bugs & AHC_PCI_MWI_BUG) != 0 && ahc->pci_cachesize != 0);
}
