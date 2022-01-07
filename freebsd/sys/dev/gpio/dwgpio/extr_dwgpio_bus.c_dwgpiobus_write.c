
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwgpiobus_softc {int * res; } ;
typedef int device_t ;
typedef int bus_size_t ;


 int bus_write_4 (int ,int ,int) ;
 struct dwgpiobus_softc* device_get_softc (int ) ;

__attribute__((used)) static int
dwgpiobus_write(device_t dev, bus_size_t offset, int val)
{
 struct dwgpiobus_softc *sc;

 sc = device_get_softc(dev);

 bus_write_4(sc->res[0], offset, val);

 return (0);
}
