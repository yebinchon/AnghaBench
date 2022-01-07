
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t4iov_softc {int * sc_main; int sc_dev; } ;
typedef int device_t ;


 int ENXIO ;
 scalar_t__ T4_IS_MAIN_READY (int *) ;
 struct t4iov_softc* device_get_softc (int ) ;
 int * pci_find_dbsf (int ,int ,int ,int) ;
 int pci_get_bus (int ) ;
 int pci_get_domain (int ) ;
 int pci_get_slot (int ) ;
 int t4iov_attach_child (int ) ;

__attribute__((used)) static int
t4iov_attach(device_t dev)
{
 struct t4iov_softc *sc;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;

 sc->sc_main = pci_find_dbsf(pci_get_domain(dev), pci_get_bus(dev),
     pci_get_slot(dev), 4);
 if (sc->sc_main == ((void*)0))
  return (ENXIO);
 if (T4_IS_MAIN_READY(sc->sc_main) == 0)
  return (t4iov_attach_child(dev));
 return (0);
}
