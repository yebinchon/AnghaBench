
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct an_softc {int an_gone; } ;
typedef int device_t ;


 int AN_LOCK (struct an_softc*) ;
 int AN_UNLOCK (struct an_softc*) ;
 int an_stop (struct an_softc*) ;
 struct an_softc* device_get_softc (int ) ;

int
an_shutdown(device_t dev)
{
 struct an_softc *sc;

 sc = device_get_softc(dev);
 AN_LOCK(sc);
 an_stop(sc);
 sc->an_gone = 1;
 AN_UNLOCK(sc);

 return (0);
}
