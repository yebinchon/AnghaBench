
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct schizo_softc {scalar_t__ sc_mode; scalar_t__ sc_half; } ;
typedef int device_t ;


 int PCI_SLOTMAX ;
 scalar_t__ SCHIZO_MODE_SCZ ;
 struct schizo_softc* device_get_softc (int ) ;

__attribute__((used)) static int
schizo_maxslots(device_t dev)
{
 struct schizo_softc *sc;

 sc = device_get_softc(dev);
 if (sc->sc_mode == SCHIZO_MODE_SCZ)
  return (sc->sc_half == 0 ? 4 : 6);


 return (PCI_SLOTMAX);
}
