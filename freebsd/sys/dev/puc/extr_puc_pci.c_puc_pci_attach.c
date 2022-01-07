
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct puc_softc {int sc_msi; int sc_irid; } ;
typedef int device_t ;


 struct puc_softc* device_get_softc (int ) ;
 scalar_t__ pci_alloc_msi (int ,int*) ;
 int pci_release_msi (int ) ;
 int puc_bfe_attach (int ) ;
 int puc_msi_disable ;

__attribute__((used)) static int
puc_pci_attach(device_t dev)
{
 struct puc_softc *sc;
 int error, count;

 sc = device_get_softc(dev);

 if (!puc_msi_disable) {
  count = 1;

  if (pci_alloc_msi(dev, &count) == 0) {
   sc->sc_msi = 1;
   sc->sc_irid = 1;
  }
 }

 error = puc_bfe_attach(dev);

 if (error != 0 && sc->sc_msi)
  pci_release_msi(dev);

 return (error);
}
