
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fire_softc {int sc_flags; int* sc_msi_msiq_table; int sc_msi_first; int sc_msi_mtx; int sc_msi_bitmap; int sc_msiq_bitmap; } ;
typedef int device_t ;


 int ENXIO ;
 int FIRE_MSIX ;
 int clrbit (int ,int) ;
 struct fire_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
fire_release_msix(device_t dev, device_t child, int irq)
{
 struct fire_softc *sc;

 sc = device_get_softc(dev);
 if ((sc->sc_flags & FIRE_MSIX) == 0)
  return (ENXIO);
 mtx_lock(&sc->sc_msi_mtx);
 clrbit(sc->sc_msiq_bitmap,
     sc->sc_msi_msiq_table[irq - sc->sc_msi_first]);
 clrbit(sc->sc_msi_bitmap, irq - sc->sc_msi_first);
 mtx_unlock(&sc->sc_msi_mtx);
 return (0);
}
