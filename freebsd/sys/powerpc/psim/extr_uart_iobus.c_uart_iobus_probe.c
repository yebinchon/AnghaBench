
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {int * sc_class; } ;
typedef int device_t ;


 int ENXIO ;
 struct uart_softc* device_get_softc (int ) ;
 int device_set_desc (int ,char*) ;
 char* iobus_get_name (int ) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int uart_bus_probe (int ,int ,int ,int ,int ,int ,int ) ;
 int uart_ns8250_class ;

__attribute__((used)) static int
uart_iobus_probe(device_t dev)
{
 struct uart_softc *sc;
 char *type;

 type = iobus_get_name(dev);
 if (strncmp(type, "com", 3) != 0)
  return (ENXIO);

 sc = device_get_softc(dev);
 sc->sc_class = &uart_ns8250_class;

 device_set_desc(dev, "PSIM serial port");
 return (uart_bus_probe(dev, 0, 0, 0, 0, 0, 0));
}
