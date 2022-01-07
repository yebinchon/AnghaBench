
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ukbd_softc {int sc_kbd; } ;
typedef int device_t ;


 int UKBD_LOCK_ASSERT () ;
 struct ukbd_softc* device_get_softc (int ) ;
 int ukbd_clear_state (int *) ;

__attribute__((used)) static int
ukbd_resume(device_t dev)
{
 struct ukbd_softc *sc = device_get_softc(dev);

 UKBD_LOCK_ASSERT();

 ukbd_clear_state(&sc->sc_kbd);

 return (0);
}
