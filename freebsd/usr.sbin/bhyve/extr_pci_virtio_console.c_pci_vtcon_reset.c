
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_vtcon_softc {int vsc_vs; } ;


 int DPRINTF (char*) ;
 int vi_reset_dev (int *) ;

__attribute__((used)) static void
pci_vtcon_reset(void *vsc)
{
 struct pci_vtcon_softc *sc;

 sc = vsc;

 DPRINTF(("vtcon: device reset requested!\n"));
 vi_reset_dev(&sc->vsc_vs);
}
