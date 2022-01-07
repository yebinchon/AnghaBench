
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiobus_softc {int * sc_owner; } ;
typedef int * device_t ;


 int GPIOBUS_ASSERT_UNLOCKED (struct gpiobus_softc*) ;
 int GPIOBUS_LOCK (struct gpiobus_softc*) ;
 int GPIOBUS_UNLOCK (struct gpiobus_softc*) ;
 int device_get_nameunit (int *) ;
 struct gpiobus_softc* device_get_softc (int *) ;
 int panic (char*,int ,int ,...) ;
 int wakeup (struct gpiobus_softc*) ;

__attribute__((used)) static void
gpiobus_release_bus(device_t busdev, device_t child)
{
 struct gpiobus_softc *sc;

 sc = device_get_softc(busdev);
 GPIOBUS_ASSERT_UNLOCKED(sc);
 GPIOBUS_LOCK(sc);
 if (sc->sc_owner == ((void*)0))
  panic("%s: %s releasing unowned bus.",
      device_get_nameunit(busdev),
      device_get_nameunit(child));
 if (sc->sc_owner != child)
  panic("%s: %s trying to release bus owned by %s",
      device_get_nameunit(busdev),
      device_get_nameunit(child),
      device_get_nameunit(sc->sc_owner));
 sc->sc_owner = ((void*)0);
 wakeup(sc);
 GPIOBUS_UNLOCK(sc);
}
