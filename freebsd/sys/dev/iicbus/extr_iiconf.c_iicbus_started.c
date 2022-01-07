
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iicbus_softc {int started; } ;
typedef int device_t ;


 scalar_t__ device_get_softc (int ) ;

int
iicbus_started(device_t bus)
{
 struct iicbus_softc *sc = (struct iicbus_softc *)device_get_softc(bus);

 return (sc->started);
}
