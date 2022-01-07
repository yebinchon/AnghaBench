
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct uart_softc {int sc_rxfifosz; int sc_txfifosz; struct uart_bas sc_bas; } ;


 int UART_FLUSH_RECEIVER ;
 int UART_FLUSH_TRANSMITTER ;
 int ar933x_drain (struct uart_bas*,int) ;
 int ar933x_probe (struct uart_bas*) ;

__attribute__((used)) static int
ar933x_bus_probe(struct uart_softc *sc)
{
 struct uart_bas *bas;
 int error;

 bas = &sc->sc_bas;

 error = ar933x_probe(bas);
 if (error)
  return (error);


 ar933x_drain(bas, UART_FLUSH_RECEIVER|UART_FLUSH_TRANSMITTER);


 sc->sc_rxfifosz = 16;
 sc->sc_txfifosz = 16;

 return (0);
}
