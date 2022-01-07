
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_softc {int suspended; } ;
typedef int device_t ;


 int DC_LOCK (struct dc_softc*) ;
 int DC_UNLOCK (struct dc_softc*) ;
 int dc_stop (struct dc_softc*) ;
 struct dc_softc* device_get_softc (int ) ;

__attribute__((used)) static int
dc_suspend(device_t dev)
{
 struct dc_softc *sc;

 sc = device_get_softc(dev);
 DC_LOCK(sc);
 dc_stop(sc);
 sc->suspended = 1;
 DC_UNLOCK(sc);

 return (0);
}
