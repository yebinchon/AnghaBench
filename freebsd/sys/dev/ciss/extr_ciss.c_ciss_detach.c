
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ciss_softc {int ciss_flags; int ciss_mtx; } ;
typedef int device_t ;


 int CISS_FLAG_CONTROL_OPEN ;
 int EBUSY ;
 int ciss_flush_adapter (struct ciss_softc*) ;
 int ciss_free (struct ciss_softc*) ;
 int debug_called (int) ;
 struct ciss_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
ciss_detach(device_t dev)
{
    struct ciss_softc *sc = device_get_softc(dev);

    debug_called(1);

    mtx_lock(&sc->ciss_mtx);
    if (sc->ciss_flags & CISS_FLAG_CONTROL_OPEN) {
 mtx_unlock(&sc->ciss_mtx);
 return (EBUSY);
    }


    ciss_flush_adapter(sc);


    ciss_free(sc);

    return(0);
}
