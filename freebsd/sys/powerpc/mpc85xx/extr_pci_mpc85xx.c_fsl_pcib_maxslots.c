
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_pcib_softc {scalar_t__ sc_pcie; } ;
typedef int device_t ;


 int PCI_SLOTMAX ;
 struct fsl_pcib_softc* device_get_softc (int ) ;

__attribute__((used)) static int
fsl_pcib_maxslots(device_t dev)
{
 struct fsl_pcib_softc *sc = device_get_softc(dev);

 return ((sc->sc_pcie) ? 0 : PCI_SLOTMAX);
}
