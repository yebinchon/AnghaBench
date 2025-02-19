
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct uart_softc {struct uart_bas sc_bas; } ;
struct ns8250_softc {int ier_rxbits; int ier_mask; int ier; } ;


 int IER_EMSC ;
 int IER_ERLS ;
 int IER_ERXRDY ;
 int IER_RXTMOUT ;
 int REG_IER ;
 int ns8250_bus_attach (struct uart_softc*) ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static int
jz4780_bus_attach(struct uart_softc *sc)
{
 struct ns8250_softc *ns8250;
 struct uart_bas *bas;
 int rv;

 ns8250 = (struct ns8250_softc *)sc;
 bas = &sc->sc_bas;

 rv = ns8250_bus_attach(sc);
 if (rv != 0)
  return (0);


 ns8250->ier_rxbits = IER_RXTMOUT | IER_EMSC | IER_ERLS | IER_ERXRDY;
 ns8250->ier_mask = ~(ns8250->ier_rxbits);
 ns8250->ier = uart_getreg(bas, REG_IER) & ns8250->ier_mask;
 ns8250->ier |= ns8250->ier_rxbits;
 uart_setreg(bas, REG_IER, ns8250->ier);
 uart_barrier(bas);
 return (0);
}
