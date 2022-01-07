
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct uart_bas {int dummy; } ;
struct uart_softc {struct uart_bas sc_bas; } ;


 int REG_IER ;
 int oct16550_clrint (struct uart_bas*) ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static int
oct16550_bus_detach (struct uart_softc *sc)
{
 struct uart_bas *bas;
 u_char ier;

 bas = &sc->sc_bas;
 ier = uart_getreg(bas, REG_IER) & 0xf0;
 uart_setreg(bas, REG_IER, ier);
 uart_barrier(bas);
 oct16550_clrint(bas);
 return (0);
}
