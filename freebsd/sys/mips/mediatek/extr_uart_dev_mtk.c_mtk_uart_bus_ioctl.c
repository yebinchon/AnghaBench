
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int rclk; } ;
struct uart_softc {int sc_hwmtx; struct uart_bas sc_bas; } ;


 int EINVAL ;
 int UART_CDDL_REG ;


 int uart_getreg (struct uart_bas*,int ) ;
 int uart_lock (int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
mtk_uart_bus_ioctl(struct uart_softc *sc, int request, intptr_t data)
{
 struct uart_bas *bas;
 int baudrate, divisor, error;

 bas = &sc->sc_bas;
 error = 0;
 uart_lock(sc->sc_hwmtx);
 switch (request) {
 case 128:

  break;
 case 129:
  divisor = uart_getreg(bas, UART_CDDL_REG);
  baudrate = bas->rclk / (divisor * 16);
  *(int*)data = baudrate;
  break;
 default:
  error = EINVAL;
  break;
 }
 uart_unlock(sc->sc_hwmtx);
 return (error);
}
