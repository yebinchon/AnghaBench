
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct my_softc {int dummy; } ;
typedef int device_t ;


 int MY_LOCK (struct my_softc*) ;
 int MY_UNLOCK (struct my_softc*) ;
 struct my_softc* device_get_softc (int ) ;
 int my_stop (struct my_softc*) ;

__attribute__((used)) static int
my_shutdown(device_t dev)
{
 struct my_softc *sc;

 sc = device_get_softc(dev);
 MY_LOCK(sc);
 my_stop(sc);
 MY_UNLOCK(sc);
 return 0;
}
