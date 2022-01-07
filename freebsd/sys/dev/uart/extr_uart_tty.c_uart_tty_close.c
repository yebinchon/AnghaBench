
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {scalar_t__ sc_opened; int * sc_sysdev; scalar_t__ sc_hwoflow; scalar_t__ sc_hwiflow; scalar_t__ sc_leaving; } ;
struct tty {int dummy; } ;


 int SER_DDTR ;
 int SER_DRTS ;
 int UART_IOCTL (struct uart_softc*,int ,int ) ;
 int UART_IOCTL_IFLOW ;
 int UART_IOCTL_OFLOW ;
 int UART_SETSIG (struct uart_softc*,int) ;
 struct uart_softc* tty_softc (struct tty*) ;
 int wakeup (struct uart_softc*) ;

__attribute__((used)) static void
uart_tty_close(struct tty *tp)
{
 struct uart_softc *sc;

 sc = tty_softc(tp);
 if (sc == ((void*)0) || sc->sc_leaving || !sc->sc_opened)
  return;

 if (sc->sc_hwiflow)
  UART_IOCTL(sc, UART_IOCTL_IFLOW, 0);
 if (sc->sc_hwoflow)
  UART_IOCTL(sc, UART_IOCTL_OFLOW, 0);
 if (sc->sc_sysdev == ((void*)0))
  UART_SETSIG(sc, SER_DDTR | SER_DRTS);

 wakeup(sc);
 sc->sc_opened = 0;
}
