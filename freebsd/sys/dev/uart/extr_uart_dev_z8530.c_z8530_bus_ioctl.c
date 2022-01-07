
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z8530_softc {int tpc; } ;
struct uart_bas {int rclk; } ;
struct uart_softc {int sc_hwmtx; struct uart_bas sc_bas; } ;


 int EINVAL ;
 int RR_TCH ;
 int RR_TCL ;
 int TPC_BRK ;


 int WR_TPC ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getmreg (struct uart_bas*,int ) ;
 int uart_lock (int ) ;
 int uart_setmreg (struct uart_bas*,int ,int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
z8530_bus_ioctl(struct uart_softc *sc, int request, intptr_t data)
{
 struct z8530_softc *z8530 = (struct z8530_softc*)sc;
 struct uart_bas *bas;
 int baudrate, divisor, error;

 bas = &sc->sc_bas;
 error = 0;
 uart_lock(sc->sc_hwmtx);
 switch (request) {
 case 128:
  if (data)
   z8530->tpc |= TPC_BRK;
  else
   z8530->tpc &= ~TPC_BRK;
  uart_setmreg(bas, WR_TPC, z8530->tpc);
  uart_barrier(bas);
  break;
 case 129:
  divisor = uart_getmreg(bas, RR_TCH);
  divisor = (divisor << 8) | uart_getmreg(bas, RR_TCL);
  baudrate = bas->rclk / 2 / (divisor + 2);
  *(int*)data = baudrate;
  break;
 default:
  error = EINVAL;
  break;
 }
 uart_unlock(sc->sc_hwmtx);
 return (error);
}
