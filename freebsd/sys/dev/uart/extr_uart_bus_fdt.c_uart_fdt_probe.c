
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {struct uart_class* sc_class; } ;
struct uart_class {int dummy; } ;
typedef int phandle_t ;
typedef scalar_t__ pcell_t ;
typedef int device_t ;


 int ENXIO ;
 struct uart_softc* device_get_softc (int ) ;
 int ofw_bus_get_node (int ) ;
 int ofw_bus_status_okay (int ) ;
 int uart_bus_probe (int ,int,int,int,int ,int ,int ) ;
 scalar_t__ uart_fdt_find_device (int ) ;
 int uart_fdt_get_clock (int ,scalar_t__*) ;
 scalar_t__ uart_fdt_get_io_width (int ,scalar_t__*) ;
 scalar_t__ uart_fdt_get_shift (int ,scalar_t__*) ;
 scalar_t__ uart_getregiowidth (struct uart_class*) ;
 scalar_t__ uart_getregshift (struct uart_class*) ;

__attribute__((used)) static int
uart_fdt_probe(device_t dev)
{
 struct uart_softc *sc;
 phandle_t node;
 pcell_t clock, shift, iowidth;
 int err;

 sc = device_get_softc(dev);

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);

 sc->sc_class = (struct uart_class *)uart_fdt_find_device(dev);
 if (sc->sc_class == ((void*)0))
  return (ENXIO);

 node = ofw_bus_get_node(dev);

 if ((err = uart_fdt_get_clock(node, &clock)) != 0)
  return (err);
 if (uart_fdt_get_shift(node, &shift) != 0)
  shift = uart_getregshift(sc->sc_class);
 if (uart_fdt_get_io_width(node, &iowidth) != 0)
  iowidth = uart_getregiowidth(sc->sc_class);

 return (uart_bus_probe(dev, (int)shift, (int)iowidth, (int)clock, 0, 0, 0));
}
