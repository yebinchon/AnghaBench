
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int rclk; } ;
struct uart_softc {int sc_hwmtx; struct uart_bas sc_bas; } ;


 int CCR_BAUDRATE_DIV ;
 int CTRL_SND_BRK_SEQ ;
 int ENOTTY ;
 int UART_CCR ;
 int UART_CTRL ;


 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_lock (int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
uart_mvebu_bus_ioctl(struct uart_softc *sc, int request, intptr_t data)
{
 struct uart_bas *bas;
 int ctrl, ret = 0;
 int divisor, baudrate;

 bas = &sc->sc_bas;
 uart_lock(sc->sc_hwmtx);
 switch (request) {
 case 128:
  ctrl = uart_getreg(bas, UART_CTRL);
  if (data)
   ctrl |= CTRL_SND_BRK_SEQ;
  else
   ctrl &=~ CTRL_SND_BRK_SEQ;
  uart_setreg(bas, UART_CTRL, ctrl);
  uart_barrier(bas);
  break;

 case 129:
  divisor = uart_getreg(bas, UART_CCR) & CCR_BAUDRATE_DIV;
  baudrate = bas->rclk/(divisor * 16);
  *(int *)data = baudrate;
  break;

 default:
  ret = ENOTTY;
  break;
 }
 uart_unlock(sc->sc_hwmtx);

 return (ret);
}
