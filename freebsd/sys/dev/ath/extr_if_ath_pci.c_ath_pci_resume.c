
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_pci_softc {int sc_sc; } ;
typedef int device_t ;


 int ath_pci_setup (int ) ;
 int ath_resume (int *) ;
 struct ath_pci_softc* device_get_softc (int ) ;

__attribute__((used)) static int
ath_pci_resume(device_t dev)
{
 struct ath_pci_softc *psc = device_get_softc(dev);




 ath_pci_setup(dev);

 ath_resume(&psc->sc_sc);

 return (0);
}
