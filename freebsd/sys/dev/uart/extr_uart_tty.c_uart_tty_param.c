
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {scalar_t__ sc_hwoflow; scalar_t__ sc_isquelch; int sc_hwiflow; scalar_t__ sc_leaving; } ;
struct tty {int dummy; } ;
struct termios {int c_cflag; int c_ospeed; int c_ispeed; } ;


 int CCTS_OFLOW ;
 int CNO_RTSDTR ;
 int CRTS_IFLOW ;



 int CSIZE ;
 int CSTOPB ;
 int EINVAL ;
 int ENODEV ;
 int PARENB ;
 int PARODD ;
 int SER_DDTR ;
 int SER_DRTS ;
 int SER_DTR ;
 int SER_RTS ;
 int UART_IOCTL (struct uart_softc*,int ,int) ;
 int UART_IOCTL_IFLOW ;
 int UART_IOCTL_OFLOW ;
 scalar_t__ UART_PARAM (struct uart_softc*,int ,int,int,int) ;
 int UART_PARITY_EVEN ;
 int UART_PARITY_NONE ;
 int UART_PARITY_ODD ;
 int UART_SETSIG (struct uart_softc*,int) ;
 struct uart_softc* tty_softc (struct tty*) ;

__attribute__((used)) static int
uart_tty_param(struct tty *tp, struct termios *t)
{
 struct uart_softc *sc;
 int databits, parity, stopbits;

 sc = tty_softc(tp);
 if (sc == ((void*)0) || sc->sc_leaving)
  return (ENODEV);
 if (t->c_ispeed != t->c_ospeed && t->c_ospeed != 0)
  return (EINVAL);
 if (t->c_ospeed == 0) {
  UART_SETSIG(sc, SER_DDTR | SER_DRTS);
  return (0);
 }
 switch (t->c_cflag & CSIZE) {
 case 130: databits = 5; break;
 case 129: databits = 6; break;
 case 128: databits = 7; break;
 default: databits = 8; break;
 }
 stopbits = (t->c_cflag & CSTOPB) ? 2 : 1;
 if (t->c_cflag & PARENB)
  parity = (t->c_cflag & PARODD) ? UART_PARITY_ODD :
      UART_PARITY_EVEN;
 else
  parity = UART_PARITY_NONE;
 if (UART_PARAM(sc, t->c_ospeed, databits, stopbits, parity) != 0)
  return (EINVAL);
 if ((t->c_cflag & CNO_RTSDTR) == 0)
  UART_SETSIG(sc, SER_DDTR | SER_DTR);

 if (!sc->sc_hwiflow) {
  if ((t->c_cflag & CRTS_IFLOW) && sc->sc_isquelch)
   UART_SETSIG(sc, SER_DRTS);
  else {
   if ((t->c_cflag & CNO_RTSDTR) == 0)
    UART_SETSIG(sc, SER_DRTS | SER_RTS);
  }
 } else
  UART_IOCTL(sc, UART_IOCTL_IFLOW, (t->c_cflag & CRTS_IFLOW));

 if (sc->sc_hwoflow)
  UART_IOCTL(sc, UART_IOCTL_OFLOW, (t->c_cflag & CCTS_OFLOW));

 return (0);
}
