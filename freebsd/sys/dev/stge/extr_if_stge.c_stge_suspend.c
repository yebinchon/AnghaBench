
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stge_softc {int sc_suspended; } ;
typedef int device_t ;


 int STGE_LOCK (struct stge_softc*) ;
 int STGE_UNLOCK (struct stge_softc*) ;
 struct stge_softc* device_get_softc (int ) ;
 int stge_setwol (struct stge_softc*) ;
 int stge_stop (struct stge_softc*) ;

__attribute__((used)) static int
stge_suspend(device_t dev)
{
 struct stge_softc *sc;

 sc = device_get_softc(dev);

 STGE_LOCK(sc);
 stge_stop(sc);
 sc->sc_suspended = 1;
 stge_setwol(sc);
 STGE_UNLOCK(sc);

 return (0);
}
