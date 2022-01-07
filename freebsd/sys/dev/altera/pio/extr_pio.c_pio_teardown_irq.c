
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pio_softc {int ih; int * res; int dev; } ;
typedef int device_t ;


 int bus_teardown_intr (int ,int ,int ) ;
 struct pio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
pio_teardown_irq(device_t dev)
{
 struct pio_softc *sc;

 sc = device_get_softc(dev);

 bus_teardown_intr(sc->dev, sc->res[1], sc->ih);

 return (0);
}
