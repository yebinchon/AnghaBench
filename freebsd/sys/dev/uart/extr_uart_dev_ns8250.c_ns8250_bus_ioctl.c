
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uart_bas {int rclk; } ;
struct uart_softc {int sc_hwmtx; struct uart_bas sc_bas; } ;


 int EFR_CTS ;
 int EFR_RTS ;
 int EINVAL ;
 int ENXIO ;
 int LCR_DLAB ;
 int LCR_SBREAK ;
 int REG_DLH ;
 int REG_DLL ;
 int REG_EFR ;
 int REG_LCR ;




 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_lock (int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;
 int uart_unlock (int ) ;

int
ns8250_bus_ioctl(struct uart_softc *sc, int request, intptr_t data)
{
 struct uart_bas *bas;
 int baudrate, divisor, error;
 uint8_t efr, lcr;

 bas = &sc->sc_bas;
 error = 0;
 uart_lock(sc->sc_hwmtx);
 switch (request) {
 case 130:
  lcr = uart_getreg(bas, REG_LCR);
  if (data)
   lcr |= LCR_SBREAK;
  else
   lcr &= ~LCR_SBREAK;
  uart_setreg(bas, REG_LCR, lcr);
  uart_barrier(bas);
  break;
 case 129:
  lcr = uart_getreg(bas, REG_LCR);
  uart_barrier(bas);
  uart_setreg(bas, REG_LCR, 0xbf);
  uart_barrier(bas);
  efr = uart_getreg(bas, REG_EFR);
  if (data)
   efr |= EFR_RTS;
  else
   efr &= ~EFR_RTS;
  uart_setreg(bas, REG_EFR, efr);
  uart_barrier(bas);
  uart_setreg(bas, REG_LCR, lcr);
  uart_barrier(bas);
  break;
 case 128:
  lcr = uart_getreg(bas, REG_LCR);
  uart_barrier(bas);
  uart_setreg(bas, REG_LCR, 0xbf);
  uart_barrier(bas);
  efr = uart_getreg(bas, REG_EFR);
  if (data)
   efr |= EFR_CTS;
  else
   efr &= ~EFR_CTS;
  uart_setreg(bas, REG_EFR, efr);
  uart_barrier(bas);
  uart_setreg(bas, REG_LCR, lcr);
  uart_barrier(bas);
  break;
 case 131:
  lcr = uart_getreg(bas, REG_LCR);
  uart_setreg(bas, REG_LCR, lcr | LCR_DLAB);
  uart_barrier(bas);
  divisor = uart_getreg(bas, REG_DLL) |
      (uart_getreg(bas, REG_DLH) << 8);
  uart_barrier(bas);
  uart_setreg(bas, REG_LCR, lcr);
  uart_barrier(bas);
  baudrate = (divisor > 0) ? bas->rclk / divisor / 16 : 0;
  if (baudrate > 0)
   *(int*)data = baudrate;
  else
   error = ENXIO;
  break;
 default:
  error = EINVAL;
  break;
 }
 uart_unlock(sc->sc_hwmtx);
 return (error);
}
