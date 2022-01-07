
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiobus_softc {int * sc_owner; int sc_mtx; } ;
typedef int * device_t ;


 int EWOULDBLOCK ;
 int GPIOBUS_ASSERT_UNLOCKED (struct gpiobus_softc*) ;
 int GPIOBUS_DONTWAIT ;
 int GPIOBUS_LOCK (struct gpiobus_softc*) ;
 int GPIOBUS_UNLOCK (struct gpiobus_softc*) ;
 int device_get_nameunit (int *) ;
 struct gpiobus_softc* device_get_softc (int *) ;
 int mtx_sleep (struct gpiobus_softc*,int *,int ,char*,int ) ;
 int panic (char*,int ,int ) ;

__attribute__((used)) static int
gpiobus_acquire_bus(device_t busdev, device_t child, int how)
{
 struct gpiobus_softc *sc;

 sc = device_get_softc(busdev);
 GPIOBUS_ASSERT_UNLOCKED(sc);
 GPIOBUS_LOCK(sc);
 if (sc->sc_owner != ((void*)0)) {
  if (sc->sc_owner == child)
   panic("%s: %s still owns the bus.",
       device_get_nameunit(busdev),
       device_get_nameunit(child));
  if (how == GPIOBUS_DONTWAIT) {
   GPIOBUS_UNLOCK(sc);
   return (EWOULDBLOCK);
  }
  while (sc->sc_owner != ((void*)0))
   mtx_sleep(sc, &sc->sc_mtx, 0, "gpiobuswait", 0);
 }
 sc->sc_owner = child;
 GPIOBUS_UNLOCK(sc);

 return (0);
}
