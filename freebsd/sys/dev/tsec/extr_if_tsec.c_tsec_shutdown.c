
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsec_softc {int dummy; } ;
typedef int device_t ;


 int TSEC_GLOBAL_LOCK (struct tsec_softc*) ;
 int TSEC_GLOBAL_UNLOCK (struct tsec_softc*) ;
 struct tsec_softc* device_get_softc (int ) ;
 int tsec_stop (struct tsec_softc*) ;

int
tsec_shutdown(device_t dev)
{
 struct tsec_softc *sc;

 sc = device_get_softc(dev);

 TSEC_GLOBAL_LOCK(sc);
 tsec_stop(sc);
 TSEC_GLOBAL_UNLOCK(sc);
 return (0);
}
