
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_softc {int dummy; } ;
typedef int device_t ;


 int TI_LOCK (struct ti_softc*) ;
 int TI_UNLOCK (struct ti_softc*) ;
 struct ti_softc* device_get_softc (int ) ;
 int ti_chipinit (struct ti_softc*) ;

__attribute__((used)) static int
ti_shutdown(device_t dev)
{
 struct ti_softc *sc;

 sc = device_get_softc(dev);
 TI_LOCK(sc);
 ti_chipinit(sc);
 TI_UNLOCK(sc);

 return (0);
}
