
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct uart_softc {struct uart_bas sc_bas; } ;
struct uart_pl011_softc {int imsc; } ;


 int IMSC_MASK_ALL ;
 int RIS_RTIM ;
 int UART_ICR ;
 int UART_IMSC ;
 int UART_RXREADY ;
 int UART_TXEMPTY ;
 int __uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static int
uart_pl011_bus_attach(struct uart_softc *sc)
{
 struct uart_pl011_softc *psc;
 struct uart_bas *bas;

 psc = (struct uart_pl011_softc *)sc;
 bas = &sc->sc_bas;


 psc->imsc = (UART_RXREADY | RIS_RTIM | UART_TXEMPTY);
 __uart_setreg(bas, UART_IMSC, psc->imsc);


 __uart_setreg(bas, UART_ICR, IMSC_MASK_ALL);

 return (0);
}
