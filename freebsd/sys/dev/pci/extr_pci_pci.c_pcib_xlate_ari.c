
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcib_softc {int flags; } ;
typedef int device_t ;


 int KASSERT (int,char*) ;
 int PCIB_ENABLE_ARI ;
 int PCIE_ARI_FUNC (int) ;
 int PCIE_ARI_SLOT (int) ;
 struct pcib_softc* device_get_softc (int ) ;

__attribute__((used)) static __inline void
pcib_xlate_ari(device_t pcib, int bus, int *slot, int *func)
{
 struct pcib_softc *sc;
 int ari_func;

 sc = device_get_softc(pcib);
 ari_func = *func;

 if (sc->flags & PCIB_ENABLE_ARI) {
  KASSERT(*slot == 0,
      ("Non-zero slot number with ARI enabled!"));
  *slot = PCIE_ARI_SLOT(ari_func);
  *func = PCIE_ARI_FUNC(ari_func);
 }
}
