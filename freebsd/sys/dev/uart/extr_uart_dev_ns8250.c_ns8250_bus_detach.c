
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct uart_bas {int dummy; } ;
struct uart_softc {struct uart_bas sc_bas; } ;
struct ns8250_softc {int ier_mask; } ;


 int REG_IER ;
 int ns8250_clrint (struct uart_bas*) ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;

int
ns8250_bus_detach(struct uart_softc *sc)
{
 struct ns8250_softc *ns8250;
 struct uart_bas *bas;
 u_char ier;

 ns8250 = (struct ns8250_softc *)sc;
 bas = &sc->sc_bas;
 ier = uart_getreg(bas, REG_IER) & ns8250->ier_mask;
 uart_setreg(bas, REG_IER, ier);
 uart_barrier(bas);
 ns8250_clrint(bas);
 return (0);
}
