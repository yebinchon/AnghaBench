
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uart_bas {int rclk; int chan; } ;
struct uart_softc {int sc_hwmtx; struct uart_bas sc_bas; } ;


 int EINVAL ;
 int QUICC_REG_BRG (int ) ;


 int quicc_read4 (struct uart_bas*,int ) ;
 int uart_lock (int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
quicc_bus_ioctl(struct uart_softc *sc, int request, intptr_t data)
{
 struct uart_bas *bas;
 uint32_t brg;
 int baudrate, error;

 bas = &sc->sc_bas;
 error = 0;
 uart_lock(sc->sc_hwmtx);
 switch (request) {
 case 128:
  break;
 case 129:
  brg = quicc_read4(bas, QUICC_REG_BRG(bas->chan - 1)) & 0x1fff;
  brg = (brg & 1) ? (brg + 1) << 3 : (brg + 2) >> 1;
  baudrate = bas->rclk / (brg * 16);
  *(int*)data = baudrate;
  break;
 default:
  error = EINVAL;
  break;
 }
 uart_unlock(sc->sc_hwmtx);
 return (error);
}
