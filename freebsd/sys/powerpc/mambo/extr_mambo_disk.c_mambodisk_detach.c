
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mambodisk_softc {int running; int disk; int sc_mtx; } ;
typedef int device_t ;


 int MBODISK_LOCK (struct mambodisk_softc*) ;
 int MBODISK_LOCK_DESTROY (struct mambodisk_softc*) ;
 int MBODISK_UNLOCK (struct mambodisk_softc*) ;
 int PRIBIO ;
 struct mambodisk_softc* device_get_softc (int ) ;
 int disk_destroy (int ) ;
 int msleep (struct mambodisk_softc*,int *,int ,char*,int ) ;
 int wakeup (struct mambodisk_softc*) ;

__attribute__((used)) static int
mambodisk_detach(device_t dev)
{
 struct mambodisk_softc *sc = device_get_softc(dev);


 MBODISK_LOCK(sc);
 sc->running = 0;
 wakeup(sc);
 MBODISK_UNLOCK(sc);


 MBODISK_LOCK(sc);
 while (sc->running != -1)
  msleep(sc, &sc->sc_mtx, PRIBIO, "detach", 0);
 MBODISK_UNLOCK(sc);


 disk_destroy(sc->disk);


 MBODISK_LOCK_DESTROY(sc);

 return (0);
}
