
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twe_softc {int twe_state; } ;
typedef int device_t ;


 int EBUSY ;
 int TWE_IO_LOCK (struct twe_softc*) ;
 int TWE_IO_UNLOCK (struct twe_softc*) ;
 int TWE_STATE_DETACHING ;
 int TWE_STATE_OPEN ;
 int debug_called (int) ;
 struct twe_softc* device_get_softc (int ) ;
 int twe_free (struct twe_softc*) ;
 scalar_t__ twe_shutdown (int ) ;

__attribute__((used)) static int
twe_detach(device_t dev)
{
    struct twe_softc *sc = device_get_softc(dev);

    debug_called(4);

    TWE_IO_LOCK(sc);
    if (sc->twe_state & TWE_STATE_OPEN) {
 TWE_IO_UNLOCK(sc);
 return (EBUSY);
    }
    sc->twe_state |= TWE_STATE_DETACHING;
    TWE_IO_UNLOCK(sc);




    if (twe_shutdown(dev)) {
 TWE_IO_LOCK(sc);
 sc->twe_state &= ~TWE_STATE_DETACHING;
 TWE_IO_UNLOCK(sc);
 return (EBUSY);
    }

    twe_free(sc);

    return(0);
}
