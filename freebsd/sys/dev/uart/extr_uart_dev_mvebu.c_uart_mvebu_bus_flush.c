
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct uart_softc {int sc_hwmtx; struct uart_bas sc_bas; } ;


 int CTRL_RX_FIFO_RST ;
 int CTRL_TX_FIFO_RST ;
 int EINVAL ;
 int UART_CTRL ;


 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_lock (int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
uart_mvebu_bus_flush(struct uart_softc *sc, int what)
{
 struct uart_bas *bas;
 int ctrl, ret = 0;

 bas = &sc->sc_bas;
 uart_lock(sc->sc_hwmtx);
 ctrl = uart_getreg(bas, UART_CTRL);

 switch (what) {
 case 129:
  uart_setreg(bas, UART_CTRL, ctrl | CTRL_RX_FIFO_RST);
  uart_barrier(bas);
  break;

 case 128:
  uart_setreg(bas, UART_CTRL, ctrl | CTRL_TX_FIFO_RST);
  uart_barrier(bas);
  break;

 default:
  ret = EINVAL;
  break;
 }


 if (!ret) {
  uart_setreg(bas, UART_CTRL, ctrl);
  uart_barrier(bas);
 }

 uart_unlock(sc->sc_hwmtx);
 return (ret);
}
