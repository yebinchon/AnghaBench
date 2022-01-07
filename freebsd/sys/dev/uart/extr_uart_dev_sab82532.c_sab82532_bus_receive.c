
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {size_t sc_rxput; int sc_hwmtx; int * sc_rxbuf; struct uart_bas sc_bas; } ;


 int SAB_CMDR ;
 int SAB_CMDR_RMC ;
 scalar_t__ SAB_RBCL ;
 scalar_t__ SAB_RFIFO ;
 int SAB_RSTAT_FE ;
 int SAB_RSTAT_PE ;
 scalar_t__ SAB_STAR ;
 int SAB_STAR_CEC ;
 int SAB_STAR_RFNE ;
 int UART_STAT_FRAMERR ;
 int UART_STAT_OVERRUN ;
 int UART_STAT_PARERR ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,scalar_t__) ;
 int uart_lock (int ) ;
 scalar_t__ uart_rx_full (struct uart_softc*) ;
 int uart_rx_put (struct uart_softc*,int) ;
 int uart_setreg (struct uart_bas*,int ,int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
sab82532_bus_receive(struct uart_softc *sc)
{
 struct uart_bas *bas;
 int i, rbcl, xc;
 uint8_t s;

 bas = &sc->sc_bas;
 uart_lock(sc->sc_hwmtx);
 if (uart_getreg(bas, SAB_STAR) & SAB_STAR_RFNE) {
  rbcl = uart_getreg(bas, SAB_RBCL) & 31;
  if (rbcl == 0)
   rbcl = 32;
  for (i = 0; i < rbcl; i += 2) {
   if (uart_rx_full(sc)) {
    sc->sc_rxbuf[sc->sc_rxput] = UART_STAT_OVERRUN;
    break;
   }
   xc = uart_getreg(bas, SAB_RFIFO);
   s = uart_getreg(bas, SAB_RFIFO + 1);
   if (s & SAB_RSTAT_FE)
    xc |= UART_STAT_FRAMERR;
   if (s & SAB_RSTAT_PE)
    xc |= UART_STAT_PARERR;
   uart_rx_put(sc, xc);
  }
 }

 while (uart_getreg(bas, SAB_STAR) & SAB_STAR_CEC)
  ;
 uart_setreg(bas, SAB_CMDR, SAB_CMDR_RMC);
 uart_barrier(bas);
 uart_unlock(sc->sc_hwmtx);
 return (0);
}
