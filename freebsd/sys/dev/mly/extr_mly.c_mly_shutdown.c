
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mly_softc {int mly_state; int mly_timeout; int mly_periodic; } ;
typedef int device_t ;


 int EBUSY ;
 int MLY_LOCK (struct mly_softc*) ;
 int MLY_MASK_INTERRUPTS (struct mly_softc*) ;
 int MLY_STATE_OPEN ;
 int MLY_UNLOCK (struct mly_softc*) ;
 int callout_stop (int *) ;
 int debug_called (int) ;
 struct mly_softc* device_get_softc (int ) ;
 scalar_t__ mly_flush (struct mly_softc*) ;
 int mly_printf (struct mly_softc*,char*) ;
 int printf (char*,char*) ;

__attribute__((used)) static int
mly_shutdown(device_t dev)
{
    struct mly_softc *sc = device_get_softc(dev);

    debug_called(1);

    MLY_LOCK(sc);
    if (sc->mly_state & MLY_STATE_OPEN) {
 MLY_UNLOCK(sc);
 return(EBUSY);
    }


    callout_stop(&sc->mly_periodic);





    mly_printf(sc, "flushing cache...");
    printf("%s\n", mly_flush(sc) ? "failed" : "done");

    MLY_MASK_INTERRUPTS(sc);
    MLY_UNLOCK(sc);

    return(0);
}
