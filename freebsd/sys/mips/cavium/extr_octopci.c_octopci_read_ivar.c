
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octopci_softc {uintptr_t sc_domain; uintptr_t sc_bus; } ;
typedef int device_t ;


 int ENOENT ;


 struct octopci_softc* device_get_softc (int ) ;

__attribute__((used)) static int
octopci_read_ivar(device_t dev, device_t child, int which, uintptr_t *result)
{
 struct octopci_softc *sc;

 sc = device_get_softc(dev);

 switch (which) {
 case 128:
  *result = sc->sc_domain;
  return (0);
 case 129:
  *result = sc->sc_bus;
  return (0);

 }
 return (ENOENT);
}
