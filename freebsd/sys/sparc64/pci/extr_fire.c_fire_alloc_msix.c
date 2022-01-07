
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fire_softc {int sc_flags; int sc_msiq_count; int sc_msi_count; int* sc_msi_msiq_table; int sc_msi_first; int sc_msi_mtx; int sc_msi_bitmap; int sc_msiq_bitmap; } ;
typedef int device_t ;


 int ENXIO ;
 int FIRE_MSIX ;
 struct fire_softc* device_get_softc (int ) ;
 scalar_t__ isclr (int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int setbit (int ,int) ;

__attribute__((used)) static int
fire_alloc_msix(device_t dev, device_t child, int *irq)
{
 struct fire_softc *sc;
 int i, msiq;

 sc = device_get_softc(dev);
 if ((sc->sc_flags & FIRE_MSIX) == 0)
  return (ENXIO);
 mtx_lock(&sc->sc_msi_mtx);
 msiq = 0;
 for (i = 0; i < sc->sc_msiq_count; i++) {
  if (isclr(sc->sc_msiq_bitmap, i) != 0) {
   msiq = i;
   break;
  }
 }
 if (i == sc->sc_msiq_count) {
  mtx_unlock(&sc->sc_msi_mtx);
  return (ENXIO);
 }
 for (i = sc->sc_msi_count - 1; i >= 0; i--) {
  if (isclr(sc->sc_msi_bitmap, i) != 0) {
   setbit(sc->sc_msiq_bitmap, msiq);
   setbit(sc->sc_msi_bitmap, i);
   sc->sc_msi_msiq_table[i] = msiq;
   *irq = sc->sc_msi_first + i;
   mtx_unlock(&sc->sc_msi_mtx);
   return (0);
  }
 }
 mtx_unlock(&sc->sc_msi_mtx);
 return (ENXIO);
}
