
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct uart_softc {int sc_txdatasz; int* sc_txbuf; int sc_txbusy; int sc_hwmtx; struct uart_bas sc_bas; } ;
struct oct16550_softc {int ier; } ;


 int IER_ETXRDY ;
 int REG_DATA ;
 int REG_IER ;
 int oct16550_delay (struct uart_bas*) ;
 int oct16550_putc (struct uart_bas*,int) ;
 int oct16550_wait_txhr_empty (struct uart_bas*,int,int ) ;
 int uart_barrier (struct uart_bas*) ;
 int uart_lock (int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
oct16550_bus_transmit (struct uart_softc *sc)
{
 struct oct16550_softc *oct16550 = (struct oct16550_softc*)sc;
 struct uart_bas *bas;
 int i;

 bas = &sc->sc_bas;
 uart_lock(sc->sc_hwmtx);






        oct16550_wait_txhr_empty(bas, 100, oct16550_delay(bas));
 uart_setreg(bas, REG_IER, oct16550->ier | IER_ETXRDY);
 uart_barrier(bas);

 for (i = 0; i < sc->sc_txdatasz; i++) {
  uart_setreg(bas, REG_DATA, sc->sc_txbuf[i]);
  uart_barrier(bas);
 }
 sc->sc_txbusy = 1;

 uart_unlock(sc->sc_hwmtx);
 return (0);
}
