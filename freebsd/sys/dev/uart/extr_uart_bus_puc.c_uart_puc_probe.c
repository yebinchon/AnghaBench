
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {int * sc_class; } ;
typedef int device_t ;


 scalar_t__ BUS_READ_IVAR (int ,int ,int ,uintptr_t*) ;
 int ENXIO ;
 int PUC_IVAR_CLOCK ;
 int PUC_IVAR_TYPE ;
 uintptr_t PUC_TYPE_SERIAL ;
 int device_get_parent (int ) ;
 struct uart_softc* device_get_softc (int ) ;
 int uart_bus_probe (int ,int ,int ,uintptr_t,int ,int ,int ) ;
 int uart_ns8250_class ;

__attribute__((used)) static int
uart_puc_probe(device_t dev)
{
 device_t parent;
 struct uart_softc *sc;
 uintptr_t rclk, type;

 parent = device_get_parent(dev);
 sc = device_get_softc(dev);

 if (BUS_READ_IVAR(parent, dev, PUC_IVAR_TYPE, &type))
  return (ENXIO);
 if (type != PUC_TYPE_SERIAL)
  return (ENXIO);

 sc->sc_class = &uart_ns8250_class;

 if (BUS_READ_IVAR(parent, dev, PUC_IVAR_CLOCK, &rclk))
  rclk = 0;
 return (uart_bus_probe(dev, 0, 0, rclk, 0, 0, 0));
}
