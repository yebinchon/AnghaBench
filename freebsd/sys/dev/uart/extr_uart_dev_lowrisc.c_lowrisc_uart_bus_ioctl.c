
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct uart_bas {int dummy; } ;
struct uart_softc {int sc_hwmtx; struct uart_bas sc_bas; } ;


 int EINVAL ;


 int lowrisc_uart_getbaud (struct uart_bas*) ;
 int uart_lock (int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
lowrisc_uart_bus_ioctl(struct uart_softc *sc, int request, intptr_t data)
{
 struct uart_bas *bas;
 int error;

 bas = &sc->sc_bas;
 error = 0;
 uart_lock(sc->sc_hwmtx);
 switch (request) {
 case 128:

  break;
 case 129:
  *(u_int*)data = lowrisc_uart_getbaud(bas);
  break;
 default:
  error = EINVAL;
  break;
 }
 uart_unlock(sc->sc_hwmtx);

 return (error);
}
