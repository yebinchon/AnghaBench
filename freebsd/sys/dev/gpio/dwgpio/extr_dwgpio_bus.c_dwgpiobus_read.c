
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwgpiobus_softc {int * res; } ;
typedef int device_t ;
typedef int bus_size_t ;


 int bus_read_4 (int ,int ) ;
 struct dwgpiobus_softc* device_get_softc (int ) ;

__attribute__((used)) static int
dwgpiobus_read(device_t dev, bus_size_t offset)
{
 struct dwgpiobus_softc *sc;
 int val;

 sc = device_get_softc(dev);

 val = bus_read_4(sc->res[0], offset);

 return (val);
}
