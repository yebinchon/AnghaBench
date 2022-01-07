
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct safe_softc {int sc_dev; } ;




 int pci_get_device (int ) ;
 int pci_get_vendor (int ) ;

__attribute__((used)) static const char*
safe_partname(struct safe_softc *sc)
{

 switch (pci_get_vendor(sc->sc_dev)) {
 case 128:
  switch (pci_get_device(sc->sc_dev)) {
  case 129: return "SafeNet SafeXcel-1141";
  }
  return "SafeNet unknown-part";
 }
 return "Unknown-vendor unknown-part";
}
