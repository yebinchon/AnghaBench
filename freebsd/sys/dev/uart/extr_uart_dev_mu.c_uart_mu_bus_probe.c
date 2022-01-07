
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {int sc_rxfifosz; int sc_txfifosz; int sc_dev; } ;


 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
uart_mu_bus_probe(struct uart_softc *sc)
{


 sc->sc_rxfifosz = 8;
 sc->sc_txfifosz = 8;
 device_set_desc(sc->sc_dev, "BCM2835 Mini-UART");

 return (0);
}
