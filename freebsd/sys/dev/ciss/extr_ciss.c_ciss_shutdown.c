
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ciss_softc {int ciss_mtx; scalar_t__ ciss_soft_reset; } ;
typedef int device_t ;


 int ciss_flush_adapter (struct ciss_softc*) ;
 int ciss_soft_reset (struct ciss_softc*) ;
 int debug_called (int) ;
 struct ciss_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
ciss_shutdown(device_t dev)
{
    struct ciss_softc *sc = device_get_softc(dev);

    debug_called(1);

    mtx_lock(&sc->ciss_mtx);

    ciss_flush_adapter(sc);

    if (sc->ciss_soft_reset)
 ciss_soft_reset(sc);
    mtx_unlock(&sc->ciss_mtx);

    return(0);
}
