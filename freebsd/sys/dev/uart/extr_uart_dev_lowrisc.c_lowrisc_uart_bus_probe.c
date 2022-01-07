
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {int sc_rxfifosz; int sc_txfifosz; int sc_dev; int sc_bas; } ;


 int device_set_desc (int ,char*) ;
 int lowrisc_uart_probe (int *) ;

__attribute__((used)) static int
lowrisc_uart_bus_probe(struct uart_softc *sc)
{
 int error;

 error = lowrisc_uart_probe(&sc->sc_bas);
 if (error)
  return (error);







 sc->sc_rxfifosz = 2048;
 sc->sc_txfifosz = 2048;

 device_set_desc(sc->sc_dev, "lowRISC UART");

 return (0);
}
