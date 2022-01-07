
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {int * sc_class; } ;
typedef int device_t ;


 struct uart_softc* device_get_softc (int ) ;
 int uart_bus_attach (int ) ;
 int uart_bus_probe (int ,int ,int ,int ,int ,int ,int ) ;
 int uart_ns8250_class ;

__attribute__((used)) static int
uart_pccard_attach(device_t dev)
{
 struct uart_softc *sc;
 int error;

 sc = device_get_softc(dev);
 sc->sc_class = &uart_ns8250_class;

 error = uart_bus_probe(dev, 0, 0, 0, 0, 0, 0);
 if (error > 0)
  return (error);
 return (uart_bus_attach(dev));
}
