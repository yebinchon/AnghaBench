
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {int sc_hwmtx; scalar_t__ sc_txbusy; struct uart_bas sc_bas; } ;
struct ar933x_softc {int u_ier; } ;


 int AR933X_UART_INT_EN_REG ;
 int AR933X_UART_INT_REG ;
 int AR933X_UART_INT_RX_VALID ;
 int AR933X_UART_INT_TX_EMPTY ;
 int SER_INT_RXREADY ;
 int SER_INT_SIGCHG ;
 int SER_INT_TXIDLE ;
 int ar933x_getreg (struct uart_bas*,int ) ;
 int ar933x_setreg (struct uart_bas*,int ,int) ;
 int uart_barrier (struct uart_bas*) ;
 int uart_lock (int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
ar933x_bus_ipend(struct uart_softc *sc)
{
 struct ar933x_softc *u = (struct ar933x_softc *)sc;
 struct uart_bas *bas = &sc->sc_bas;
 int ipend = 0;
 uint32_t isr;

 uart_lock(sc->sc_hwmtx);




 isr = ar933x_getreg(bas, AR933X_UART_INT_REG);
 ar933x_setreg(bas, AR933X_UART_INT_REG, isr);
 uart_barrier(bas);




 if (isr & AR933X_UART_INT_RX_VALID) {
  ipend |= SER_INT_RXREADY;
 }
 if (isr & AR933X_UART_INT_TX_EMPTY) {



  u->u_ier &= ~AR933X_UART_INT_TX_EMPTY;
  ar933x_setreg(bas, AR933X_UART_INT_EN_REG, u->u_ier);
  uart_barrier(bas);
 }






 if (sc->sc_txbusy) {
  if (isr & AR933X_UART_INT_TX_EMPTY) {
   ipend |= SER_INT_TXIDLE;
  } else {
   ipend |= SER_INT_SIGCHG;
  }
 }

 uart_unlock(sc->sc_hwmtx);
 return (ipend);
}
