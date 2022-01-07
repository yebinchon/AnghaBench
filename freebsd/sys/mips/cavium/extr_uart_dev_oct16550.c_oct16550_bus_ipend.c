
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {int sc_hwmtx; struct uart_bas sc_bas; } ;


 int IIR_BUSY ;
 int IIR_IMASK ;
 int IIR_MLSC ;
 int IIR_NOPEND ;
 int IIR_RLS ;
 int IIR_RXRDY ;
 int IIR_RXTOUT ;
 int IIR_TXRDY ;
 int LSR_BI ;
 int LSR_OE ;
 int LSR_RXRDY ;
 int REG_IIR ;
 int REG_LSR ;
 int REG_USR ;
 int SER_INT_BREAK ;
 int SER_INT_OVERRUN ;
 int SER_INT_RXREADY ;
 int SER_INT_SIGCHG ;
 int SER_INT_TXIDLE ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_lock (int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
oct16550_bus_ipend(struct uart_softc *sc)
{
 struct uart_bas *bas;
 int ipend = 0;
 uint8_t iir, lsr;

 bas = &sc->sc_bas;
 uart_lock(sc->sc_hwmtx);

 iir = uart_getreg(bas, REG_IIR) & IIR_IMASK;
 if (iir != IIR_NOPEND) {

             if (iir == IIR_RLS) {
                     lsr = uart_getreg(bas, REG_LSR);
                        if (lsr & LSR_OE)
                             ipend |= SER_INT_OVERRUN;
                        if (lsr & LSR_BI)
                             ipend |= SER_INT_BREAK;
                        if (lsr & LSR_RXRDY)
                      ipend |= SER_INT_RXREADY;

                } else if (iir == IIR_RXRDY) {
                     ipend |= SER_INT_RXREADY;

                } else if (iir == IIR_RXTOUT) {
                     ipend |= SER_INT_RXREADY;

                } else if (iir == IIR_TXRDY) {
                     ipend |= SER_INT_TXIDLE;

                } else if (iir == IIR_MLSC) {
                     ipend |= SER_INT_SIGCHG;

                } else if (iir == IIR_BUSY) {
                     (void) uart_getreg(bas, REG_USR);
                }
 }
 uart_unlock(sc->sc_hwmtx);

 return (ipend);
}
