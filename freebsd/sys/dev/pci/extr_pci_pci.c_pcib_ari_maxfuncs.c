
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcib_softc {int flags; } ;
typedef int device_t ;


 int PCIB_ENABLE_ARI ;
 int PCIE_ARI_FUNCMAX ;
 int PCI_FUNCMAX ;
 struct pcib_softc* device_get_softc (int ) ;

__attribute__((used)) static int
pcib_ari_maxfuncs(device_t dev)
{
 struct pcib_softc *sc;

 sc = device_get_softc(dev);

 if (sc->flags & PCIB_ENABLE_ARI)
  return (PCIE_ARI_FUNCMAX);
 else
  return (PCI_FUNCMAX);
}
