
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct are_softc {int dummy; } ;
typedef int device_t ;


 int ARE_LOCK (struct are_softc*) ;
 int ARE_UNLOCK (struct are_softc*) ;
 int are_stop (struct are_softc*) ;
 struct are_softc* device_get_softc (int ) ;

__attribute__((used)) static int
are_shutdown(device_t dev)
{
 struct are_softc *sc;

 sc = device_get_softc(dev);

 ARE_LOCK(sc);
 are_stop(sc);
 ARE_UNLOCK(sc);

 return (0);
}
