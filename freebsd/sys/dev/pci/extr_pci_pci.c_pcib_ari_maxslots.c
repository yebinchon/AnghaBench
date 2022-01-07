
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcib_softc {int flags; } ;
typedef int device_t ;


 int PCIB_ENABLE_ARI ;
 int PCIE_ARI_SLOTMAX ;
 struct pcib_softc* device_get_softc (int ) ;
 int pcib_maxslots (int ) ;

__attribute__((used)) static int
pcib_ari_maxslots(device_t dev)
{
 struct pcib_softc *sc;

 sc = device_get_softc(dev);

 if (sc->flags & PCIB_ENABLE_ARI)
  return (PCIE_ARI_SLOTMAX);
 else
  return (pcib_maxslots(dev));
}
