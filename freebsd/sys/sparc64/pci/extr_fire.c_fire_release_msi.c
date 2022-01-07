
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct fire_softc {int* sc_msi_msiq_table; int sc_msi_first; int sc_msi_mtx; int sc_msi_bitmap; int sc_msiq_bitmap; } ;
typedef int device_t ;


 int clrbit (int ,int) ;
 struct fire_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
fire_release_msi(device_t dev, device_t child, int count, int *irqs)
{
 struct fire_softc *sc;
 u_int i;

 sc = device_get_softc(dev);
 mtx_lock(&sc->sc_msi_mtx);
 for (i = 0; i < count; i++) {
  clrbit(sc->sc_msiq_bitmap,
      sc->sc_msi_msiq_table[irqs[i] - sc->sc_msi_first]);
  clrbit(sc->sc_msi_bitmap, irqs[i] - sc->sc_msi_first);
 }
 mtx_unlock(&sc->sc_msi_mtx);
 return (0);
}
