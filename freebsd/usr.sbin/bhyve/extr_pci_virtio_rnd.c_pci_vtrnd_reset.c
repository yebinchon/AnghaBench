
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_vtrnd_softc {int vrsc_vs; } ;


 int DPRINTF (char*) ;
 int vi_reset_dev (int *) ;

__attribute__((used)) static void
pci_vtrnd_reset(void *vsc)
{
 struct pci_vtrnd_softc *sc;

 sc = vsc;

 DPRINTF(("vtrnd: device reset requested !\n"));
 vi_reset_dev(&sc->vrsc_vs);
}
