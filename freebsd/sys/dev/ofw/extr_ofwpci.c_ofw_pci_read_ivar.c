
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_pci_softc {uintptr_t sc_pci_domain; uintptr_t sc_bus; } ;
typedef int device_t ;


 int ENOENT ;


 struct ofw_pci_softc* device_get_softc (int ) ;

int
ofw_pci_read_ivar(device_t dev, device_t child, int which, uintptr_t *result)
{
 struct ofw_pci_softc *sc;

 sc = device_get_softc(dev);

 switch (which) {
 case 128:
  *result = sc->sc_pci_domain;
  return (0);
 case 129:
  *result = sc->sc_bus;
  return (0);
 default:
  break;
 }

 return (ENOENT);
}
