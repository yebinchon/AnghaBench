
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvscsi_softc {int lock; } ;


 int MA_NOTOWNED ;
 int mtx_assert (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pvscsi_intr_locked (void*) ;

__attribute__((used)) static void
pvscsi_intr(void *xsc)
{
 struct pvscsi_softc *sc;

 sc = xsc;

 mtx_assert(&sc->lock, MA_NOTOWNED);

 mtx_lock(&sc->lock);
 pvscsi_intr_locked(xsc);
 mtx_unlock(&sc->lock);
}
