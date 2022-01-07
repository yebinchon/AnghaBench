
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct uart_softc {struct uart_devinfo* sc_sysdev; struct uart_bas sc_bas; } ;
struct uart_devinfo {int databits; int stopbits; int parity; int baudrate; } ;


 int DEFAULT_BAUD_RATE ;
 int lowrisc_uart_bus_getsig (struct uart_softc*) ;
 int lowrisc_uart_init (struct uart_bas*,int ,int,int,int ) ;

__attribute__((used)) static int
lowrisc_uart_bus_attach(struct uart_softc *sc)
{
 struct uart_bas *bas;
 struct uart_devinfo *di;

 bas = &sc->sc_bas;
 if (sc->sc_sysdev != ((void*)0)) {
  di = sc->sc_sysdev;
  lowrisc_uart_init(bas, di->baudrate, di->databits, di->stopbits,
      di->parity);
 } else
  lowrisc_uart_init(bas, DEFAULT_BAUD_RATE, 8, 1, 0);

 (void)lowrisc_uart_bus_getsig(sc);



 return (0);
}
