
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cas_softc {int * sc_res; int sc_ih; } ;
typedef int device_t ;


 int CAS_LOCK_DESTROY (struct cas_softc*) ;
 size_t CAS_RES_INTR ;
 int bus_release_resources (int ,int ,int *) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int cas_detach (struct cas_softc*) ;
 int cas_pci_res_spec ;
 struct cas_softc* device_get_softc (int ) ;

__attribute__((used)) static int
cas_pci_detach(device_t dev)
{
 struct cas_softc *sc;

 sc = device_get_softc(dev);
 bus_teardown_intr(dev, sc->sc_res[CAS_RES_INTR], sc->sc_ih);
 cas_detach(sc);
 CAS_LOCK_DESTROY(sc);
 bus_release_resources(dev, cas_pci_res_spec, sc->sc_res);
 return (0);
}
