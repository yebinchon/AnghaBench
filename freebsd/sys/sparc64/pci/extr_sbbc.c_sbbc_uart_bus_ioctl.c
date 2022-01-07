
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {int sc_hwmtx; } ;


 int EINVAL ;

 int uart_lock (int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
sbbc_uart_bus_ioctl(struct uart_softc *sc, int request, intptr_t data)
{
 int error;

 error = 0;
 uart_lock(sc->sc_hwmtx);
 switch (request) {
 case 128:
  *(int*)data = 9600;
  break;
 default:
  error = EINVAL;
  break;
 }
 uart_unlock(sc->sc_hwmtx);
 return (error);
}
