
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct twe_softc {TYPE_1__* twe_drive; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ td_disk; } ;


 int TWE_CONFIG_LOCK (struct twe_softc*) ;
 int TWE_CONFIG_UNLOCK (struct twe_softc*) ;
 int TWE_IO_LOCK (struct twe_softc*) ;
 int TWE_IO_UNLOCK (struct twe_softc*) ;
 int TWE_MAX_UNITS ;
 int debug_called (int) ;
 struct twe_softc* device_get_softc (int ) ;
 int twe_deinit (struct twe_softc*) ;
 int twe_detach_drive (struct twe_softc*,int) ;

__attribute__((used)) static int
twe_shutdown(device_t dev)
{
    struct twe_softc *sc = device_get_softc(dev);
    int i, error = 0;

    debug_called(4);




    TWE_CONFIG_LOCK(sc);
    for (i = 0; i < TWE_MAX_UNITS; i++) {
 if (sc->twe_drive[i].td_disk != 0) {
     if ((error = twe_detach_drive(sc, i)) != 0) {
  TWE_CONFIG_UNLOCK(sc);
  return (error);
     }
 }
    }
    TWE_CONFIG_UNLOCK(sc);




    TWE_IO_LOCK(sc);
    twe_deinit(sc);
    TWE_IO_UNLOCK(sc);

    return(0);
}
