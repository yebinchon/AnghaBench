
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct uart_softc {int sc_hwmtx; struct uart_bas sc_bas; } ;
struct ns8250_softc {scalar_t__ busy_detect; } ;


 int DELAY (int) ;
 int DW_REG_USR ;
 int EIO ;
 int USR_BUSY ;
 int ns8250_param (struct uart_bas*,int,int,int,int) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_lock (int ) ;
 int uart_unlock (int ) ;

int
ns8250_bus_param(struct uart_softc *sc, int baudrate, int databits,
    int stopbits, int parity)
{
 struct ns8250_softc *ns8250;
 struct uart_bas *bas;
 int error, limit;

 ns8250 = (struct ns8250_softc*)sc;
 bas = &sc->sc_bas;
 uart_lock(sc->sc_hwmtx);





 if (ns8250->busy_detect != 0) {




  limit = 10 * 1024;
  while (((uart_getreg(bas, DW_REG_USR) & USR_BUSY) != 0) &&
      --limit)
   DELAY(4);

  if (limit <= 0) {

   uart_unlock(sc->sc_hwmtx);
   return (EIO);
  }
 }

 error = ns8250_param(bas, baudrate, databits, stopbits, parity);
 uart_unlock(sc->sc_hwmtx);
 return (error);
}
