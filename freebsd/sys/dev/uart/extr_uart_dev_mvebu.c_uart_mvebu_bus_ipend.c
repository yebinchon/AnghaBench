
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct uart_softc {int sc_hwmtx; struct uart_bas sc_bas; } ;


 int CTRL_TX_IDLE_INT ;
 int DELAY (int) ;
 int ONE_FRAME_TIME ;
 int SER_INT_TXIDLE ;
 int STAT_TRANS_MASK ;
 int STAT_TX_FIFO_EMPT ;
 int STAT_TX_IDLE ;
 int UART_CTRL ;
 int UART_STAT ;
 int stat_ipend_trans (int) ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_lock (int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
uart_mvebu_bus_ipend(struct uart_softc *sc)
{
 struct uart_bas *bas;
 int ipend, ctrl, ret = 0;

 bas = &sc->sc_bas;
 uart_lock(sc->sc_hwmtx);
 ipend = uart_getreg(bas, UART_STAT);
 ctrl = uart_getreg(bas, UART_CTRL);

 if (((ipend & STAT_TX_IDLE) == STAT_TX_IDLE) &&
     (ctrl & CTRL_TX_IDLE_INT) == CTRL_TX_IDLE_INT) {

  uart_setreg(bas, UART_CTRL, ctrl & ~CTRL_TX_IDLE_INT);
  uart_barrier(bas);


  while(!(uart_getreg(bas, UART_STAT) & STAT_TX_FIFO_EMPT))
   DELAY(ONE_FRAME_TIME/2);

  ret |= SER_INT_TXIDLE;
 }

 ret |= stat_ipend_trans(ipend & STAT_TRANS_MASK);

 uart_unlock(sc->sc_hwmtx);

 return (ret);
}
