
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_pci_softc {uintptr_t sc_bus; } ;
typedef int device_t ;


 int ENOENT ;

 struct ofw_pci_softc* device_get_softc (int ) ;

int
ofw_pci_write_ivar(device_t dev, device_t child, int which, uintptr_t value)
{
 struct ofw_pci_softc *sc;

 sc = device_get_softc(dev);

 switch (which) {
 case 128:
  sc->sc_bus = value;
  return (0);
 default:
  break;
 }

 return (ENOENT);
}
