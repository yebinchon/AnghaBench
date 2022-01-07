
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {scalar_t__ sc_txbusy; int sc_hwmtx; struct uart_bas sc_bas; } ;
struct msm_uart_softc {int ier; } ;


 int GETREG (struct uart_bas*,int ) ;
 int SER_INT_RXREADY ;
 int SER_INT_TXIDLE ;
 int SETREG (struct uart_bas*,int ,int) ;
 int UART_DM_CLEAR_TX_READY ;
 int UART_DM_CR ;
 int UART_DM_IMR ;
 int UART_DM_MISR ;
 int UART_DM_RESET_STALE_INT ;
 int UART_DM_RXLEV ;
 int UART_DM_RXSTALE ;
 int UART_DM_STALE_EVENT_DISABLE ;
 int UART_DM_TXLEV ;
 int UART_DM_TX_READY ;
 int uart_barrier (struct uart_bas*) ;
 int uart_lock (int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
msm_bus_ipend(struct uart_softc *sc)
{
 struct msm_uart_softc *u = (struct msm_uart_softc *)sc;
 struct uart_bas *bas = &sc->sc_bas;
 uint32_t isr;
 int ipend;

 uart_lock(sc->sc_hwmtx);


 isr = GETREG(bas, UART_DM_MISR);

 ipend = 0;


 if (isr & UART_DM_RXLEV) {
  u->ier &= ~UART_DM_RXLEV;
  SETREG(bas, UART_DM_IMR, u->ier);
  uart_barrier(bas);
  ipend |= SER_INT_RXREADY;
 }


 if (isr & UART_DM_RXSTALE) {

  SETREG(bas, UART_DM_CR, UART_DM_STALE_EVENT_DISABLE);
  SETREG(bas, UART_DM_CR, UART_DM_RESET_STALE_INT);
  uart_barrier(bas);
  ipend |= SER_INT_RXREADY;
 }


 if (isr & UART_DM_TX_READY) {

  SETREG(bas, UART_DM_CR, UART_DM_CLEAR_TX_READY);


  u->ier &= ~UART_DM_TX_READY;
  SETREG(bas, UART_DM_IMR, u->ier);
  uart_barrier(bas);

  if (sc->sc_txbusy != 0)
   ipend |= SER_INT_TXIDLE;
 }

 if (isr & UART_DM_TXLEV) {

  u->ier &= ~UART_DM_TXLEV;
  SETREG(bas, UART_DM_IMR, u->ier);
  uart_barrier(bas);

  if (sc->sc_txbusy != 0)
   ipend |= SER_INT_TXIDLE;
 }

 uart_unlock(sc->sc_hwmtx);
 return (ipend);
}
