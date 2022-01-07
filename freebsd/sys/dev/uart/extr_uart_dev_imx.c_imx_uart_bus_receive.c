
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct uart_softc {int* sc_rxbuf; size_t sc_rxput; int sc_hwmtx; struct uart_bas sc_bas; } ;


 int ATEN ;
 int BRK ;
 int ENA (struct uart_bas*,int ,int ) ;
 int FLD (int ,int ) ;
 int FRMERR ;
 int GETREG (struct uart_bas*,int ) ;
 scalar_t__ IS (struct uart_bas*,int ,int ) ;
 int OVRRUN ;
 int PRERR ;
 int RDR ;
 int REG (int ) ;
 int RRDYEN ;
 int UART_STAT_BREAK ;
 int UART_STAT_FRAMERR ;
 int UART_STAT_OVERRUN ;
 int UART_STAT_PARERR ;
 int UCR1 ;
 int UCR2 ;
 int URXD ;
 int USR2 ;
 int uart_lock (int ) ;
 scalar_t__ uart_rx_full (struct uart_softc*) ;
 int uart_rx_put (struct uart_softc*,int) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
imx_uart_bus_receive(struct uart_softc *sc)
{
 struct uart_bas *bas;
 int xc, out;

 bas = &sc->sc_bas;
 uart_lock(sc->sc_hwmtx);







 while (IS(bas, USR2, RDR)) {
  if (uart_rx_full(sc)) {

   sc->sc_rxbuf[sc->sc_rxput] = UART_STAT_OVERRUN;
   break;
  }
  xc = GETREG(bas, REG(URXD));
  out = xc & 0x000000ff;
  if (xc & FLD(URXD, FRMERR))
   out |= UART_STAT_FRAMERR;
  if (xc & FLD(URXD, PRERR))
   out |= UART_STAT_PARERR;
  if (xc & FLD(URXD, OVRRUN))
   out |= UART_STAT_OVERRUN;
  if (xc & FLD(URXD, BRK))
   out |= UART_STAT_BREAK;

  uart_rx_put(sc, out);
 }
 ENA(bas, UCR1, RRDYEN);
 ENA(bas, UCR2, ATEN);

 uart_unlock(sc->sc_hwmtx);
 return (0);
}
