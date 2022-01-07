
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int regshft; int bsh; int bst; } ;
struct uart_softc {TYPE_1__ sc_bas; int * sc_class; TYPE_2__* sc_sysdev; } ;
typedef int device_t ;
struct TYPE_4__ {int bas; } ;


 int CVMX_MIO_UARTX_RBR (int ) ;
 int ENXIO ;
 TYPE_2__* SLIST_FIRST (int *) ;
 int bcopy (int *,TYPE_1__*,int) ;
 scalar_t__ bus_space_map (int ,int ,int ,int ,int *) ;
 struct uart_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int uart_bus_probe (int ,int ,int ,int ,int ,int,int ) ;
 int uart_bus_space_mem ;
 int uart_getrange (int *) ;
 int uart_oct16550_class ;
 int uart_sysdevs ;

__attribute__((used)) static int
uart_octeon_probe(device_t dev)
{
 struct uart_softc *sc;
 int unit;

 unit = device_get_unit(dev);
 sc = device_get_softc(dev);
 sc->sc_class = &uart_oct16550_class;






 sc->sc_sysdev = SLIST_FIRST(&uart_sysdevs);
 bcopy(&sc->sc_sysdev->bas, &sc->sc_bas, sizeof(sc->sc_bas));
 sc->sc_bas.bst = uart_bus_space_mem;




 if (bus_space_map(sc->sc_bas.bst, CVMX_MIO_UARTX_RBR(0),
     uart_getrange(sc->sc_class), 0, &sc->sc_bas.bsh) != 0)
  return (ENXIO);
 return (uart_bus_probe(dev, sc->sc_bas.regshft, 0, 0, 0, unit, 0));
}
