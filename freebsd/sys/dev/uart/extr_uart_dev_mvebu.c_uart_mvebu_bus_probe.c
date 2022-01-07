
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_softc {int sc_txfifosz; int sc_rxfifosz; scalar_t__ sc_hwoflow; scalar_t__ sc_hwiflow; int sc_dev; } ;
struct TYPE_2__ {int ocd_data; } ;


 int ENXIO ;
 int compat_data ;
 int device_set_desc (int ,char*) ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;
 int ofw_bus_status_okay (int ) ;

__attribute__((used)) static int
uart_mvebu_bus_probe(struct uart_softc *sc)
{
 if (!ofw_bus_status_okay(sc->sc_dev))
  return (ENXIO);

 if (!ofw_bus_search_compatible(sc->sc_dev, compat_data)->ocd_data)
  return (ENXIO);

 device_set_desc(sc->sc_dev, "Marvell Armada 3700 UART");

 sc->sc_txfifosz = 32;
 sc->sc_rxfifosz = 64;
 sc->sc_hwiflow = 0;
 sc->sc_hwoflow = 0;

 return (0);
}
