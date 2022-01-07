
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arge_softc {int dummy; } ;
typedef int device_t ;


 int ARGE_LOCK (struct arge_softc*) ;
 int ARGE_UNLOCK (struct arge_softc*) ;
 int arge_stop (struct arge_softc*) ;
 struct arge_softc* device_get_softc (int ) ;

__attribute__((used)) static int
arge_shutdown(device_t dev)
{
 struct arge_softc *sc;

 sc = device_get_softc(dev);

 ARGE_LOCK(sc);
 arge_stop(sc);
 ARGE_UNLOCK(sc);

 return (0);
}
