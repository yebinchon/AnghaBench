
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {int sc_hwmtx; struct uart_bas sc_bas; } ;


 int EINVAL ;
 int SAB_DAFO ;
 int SAB_DAFO_XBRK ;
 int SAB_MODE ;
 int SAB_MODE_FCTS ;
 int SAB_MODE_FRTS ;
 int SAB_MODE_RTS ;



 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_lock (int ) ;
 int uart_setreg (struct uart_bas*,int ,int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
sab82532_bus_ioctl(struct uart_softc *sc, int request, intptr_t data)
{
 struct uart_bas *bas;
 uint8_t dafo, mode;
 int error;

 bas = &sc->sc_bas;
 error = 0;
 uart_lock(sc->sc_hwmtx);
 switch (request) {
 case 130:
  dafo = uart_getreg(bas, SAB_DAFO);
  if (data)
   dafo |= SAB_DAFO_XBRK;
  else
   dafo &= ~SAB_DAFO_XBRK;
  uart_setreg(bas, SAB_DAFO, dafo);
  uart_barrier(bas);
  break;
 case 129:
  mode = uart_getreg(bas, SAB_MODE);
  if (data) {
   mode &= ~SAB_MODE_RTS;
   mode |= SAB_MODE_FRTS;
  } else {
   mode |= SAB_MODE_RTS;
   mode &= ~SAB_MODE_FRTS;
  }
  uart_setreg(bas, SAB_MODE, mode);
  uart_barrier(bas);
  break;
 case 128:
  mode = uart_getreg(bas, SAB_MODE);
  if (data)
   mode &= ~SAB_MODE_FCTS;
  else
   mode |= SAB_MODE_FCTS;
  uart_setreg(bas, SAB_MODE, mode);
  uart_barrier(bas);
  break;
 default:
  error = EINVAL;
  break;
 }
 uart_unlock(sc->sc_hwmtx);
 return (error);
}
