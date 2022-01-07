
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {int * sc_class; } ;
typedef int device_t ;


 scalar_t__ ENXIO ;
 scalar_t__ ISA_PNP_PROBE (int ,int ,int ) ;
 int device_get_parent (int ) ;
 struct uart_softc* device_get_softc (int ) ;
 int isa_ns8250_ids ;
 int uart_bus_probe (int ,int ,int ,int ,int ,int ,int ) ;
 int uart_ns8250_class ;

__attribute__((used)) static int
uart_isa_probe(device_t dev)
{
 struct uart_softc *sc;
 device_t parent;

 parent = device_get_parent(dev);
 sc = device_get_softc(dev);


 if (ISA_PNP_PROBE(parent, dev, isa_ns8250_ids) == ENXIO)
  return (ENXIO);


 sc->sc_class = &uart_ns8250_class;

 return (uart_bus_probe(dev, 0, 0, 0, 0, 0, 0));
}
