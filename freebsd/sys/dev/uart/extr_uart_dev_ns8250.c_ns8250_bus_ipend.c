
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {int sc_hwmtx; struct uart_bas sc_bas; } ;
struct ns8250_softc {int ier; scalar_t__ busy_detect; } ;


 int DW_REG_USR ;
 int IIR_BUSY ;
 int IIR_NOPEND ;
 int IIR_RXRDY ;
 int IIR_TXRDY ;
 int LSR_BI ;
 int LSR_OE ;
 int LSR_RXRDY ;
 int REG_IER ;
 int REG_IIR ;
 int REG_LSR ;
 int SER_INT_BREAK ;
 int SER_INT_OVERRUN ;
 int SER_INT_RXREADY ;
 int SER_INT_SIGCHG ;
 int SER_INT_TXIDLE ;
 int ns8250_clrint (struct uart_bas*) ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_lock (int ) ;
 int uart_setreg (struct uart_bas*,int ,int ) ;
 int uart_unlock (int ) ;

int
ns8250_bus_ipend(struct uart_softc *sc)
{
 struct uart_bas *bas;
 struct ns8250_softc *ns8250;
 int ipend;
 uint8_t iir, lsr;

 ns8250 = (struct ns8250_softc *)sc;
 bas = &sc->sc_bas;
 uart_lock(sc->sc_hwmtx);
 iir = uart_getreg(bas, REG_IIR);

 if (ns8250->busy_detect && (iir & IIR_BUSY) == IIR_BUSY) {
  (void)uart_getreg(bas, DW_REG_USR);
  uart_unlock(sc->sc_hwmtx);
  return (0);
 }
 if (iir & IIR_NOPEND) {
  uart_unlock(sc->sc_hwmtx);
  return (0);
 }
 ipend = 0;
 if (iir & IIR_RXRDY) {
  lsr = uart_getreg(bas, REG_LSR);
  if (lsr & LSR_OE)
   ipend |= SER_INT_OVERRUN;
  if (lsr & LSR_BI)
   ipend |= SER_INT_BREAK;
  if (lsr & LSR_RXRDY)
   ipend |= SER_INT_RXREADY;
 } else {
  if (iir & IIR_TXRDY) {
   ipend |= SER_INT_TXIDLE;
   uart_setreg(bas, REG_IER, ns8250->ier);
   uart_barrier(bas);
  } else
   ipend |= SER_INT_SIGCHG;
 }
 if (ipend == 0)
  ns8250_clrint(bas);
 uart_unlock(sc->sc_hwmtx);
 return (ipend);
}
