
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twe_softc {int twe_state; } ;
typedef int device_t ;


 int TWE_IO_LOCK (struct twe_softc*) ;
 int TWE_IO_UNLOCK (struct twe_softc*) ;
 int TWE_STATE_SUSPEND ;
 int debug_called (int) ;
 struct twe_softc* device_get_softc (int ) ;
 int twe_disable_interrupts (struct twe_softc*) ;

__attribute__((used)) static int
twe_suspend(device_t dev)
{
    struct twe_softc *sc = device_get_softc(dev);

    debug_called(4);

    TWE_IO_LOCK(sc);
    sc->twe_state |= TWE_STATE_SUSPEND;

    twe_disable_interrupts(sc);
    TWE_IO_UNLOCK(sc);

    return(0);
}
