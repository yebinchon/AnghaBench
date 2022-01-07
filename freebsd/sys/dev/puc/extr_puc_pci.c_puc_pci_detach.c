
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct puc_softc {scalar_t__ sc_msi; } ;
typedef int device_t ;


 struct puc_softc* device_get_softc (int ) ;
 int pci_release_msi (int ) ;
 int puc_bfe_detach (int ) ;

__attribute__((used)) static int
puc_pci_detach(device_t dev)
{
 struct puc_softc *sc;
 int error;

 sc = device_get_softc(dev);

 error = puc_bfe_detach(dev);

 if (error != 0)
  return (error);

 if (sc->sc_msi)
  error = pci_release_msi(dev);

 return (error);
}
