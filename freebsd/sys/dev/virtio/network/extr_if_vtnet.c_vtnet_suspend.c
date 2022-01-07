
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_softc {int vtnet_flags; } ;
typedef int device_t ;


 int VTNET_CORE_LOCK (struct vtnet_softc*) ;
 int VTNET_CORE_UNLOCK (struct vtnet_softc*) ;
 int VTNET_FLAG_SUSPENDED ;
 struct vtnet_softc* device_get_softc (int ) ;
 int vtnet_stop (struct vtnet_softc*) ;

__attribute__((used)) static int
vtnet_suspend(device_t dev)
{
 struct vtnet_softc *sc;

 sc = device_get_softc(dev);

 VTNET_CORE_LOCK(sc);
 vtnet_stop(sc);
 sc->vtnet_flags |= VTNET_FLAG_SUSPENDED;
 VTNET_CORE_UNLOCK(sc);

 return (0);
}
