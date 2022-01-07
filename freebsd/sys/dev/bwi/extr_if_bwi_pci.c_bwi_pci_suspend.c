
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_pci_softc {int sc_sc; } ;
typedef int device_t ;


 int bwi_suspend (int *) ;
 struct bwi_pci_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bwi_pci_suspend(device_t dev)
{
 struct bwi_pci_softc *psc = device_get_softc(dev);

 bwi_suspend(&psc->sc_sc);

 return (0);
}
