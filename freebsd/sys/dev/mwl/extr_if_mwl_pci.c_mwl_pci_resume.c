
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl_pci_softc {int sc_sc; } ;
typedef int device_t ;


 struct mwl_pci_softc* device_get_softc (int ) ;
 int mwl_resume (int *) ;
 int pci_enable_busmaster (int ) ;

__attribute__((used)) static int
mwl_pci_resume(device_t dev)
{
 struct mwl_pci_softc *psc = device_get_softc(dev);

 pci_enable_busmaster(dev);

 mwl_resume(&psc->sc_sc);

 return (0);
}
