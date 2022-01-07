
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct et_softc {int dummy; } ;
typedef int device_t ;


 int ET_LOCK (struct et_softc*) ;
 int ET_UNLOCK (struct et_softc*) ;
 struct et_softc* device_get_softc (int ) ;
 int et_stop (struct et_softc*) ;

__attribute__((used)) static int
et_shutdown(device_t dev)
{
 struct et_softc *sc;

 sc = device_get_softc(dev);
 ET_LOCK(sc);
 et_stop(sc);
 ET_UNLOCK(sc);
 return (0);
}
