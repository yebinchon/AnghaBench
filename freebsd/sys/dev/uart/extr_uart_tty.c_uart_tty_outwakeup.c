
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_softc {int sc_hwsig; scalar_t__ sc_txdatasz; int sc_txfifosz; int sc_txbuf; int sc_hwoflow; scalar_t__ sc_txbusy; scalar_t__ sc_leaving; } ;
struct TYPE_2__ {int c_cflag; } ;
struct tty {TYPE_1__ t_termios; } ;


 int CCTS_OFLOW ;
 int SER_CTS ;
 int UART_TRANSMIT (struct uart_softc*) ;
 struct uart_softc* tty_softc (struct tty*) ;
 scalar_t__ ttydisc_getc (struct tty*,int ,int ) ;

__attribute__((used)) static void
uart_tty_outwakeup(struct tty *tp)
{
 struct uart_softc *sc;

 sc = tty_softc(tp);
 if (sc == ((void*)0) || sc->sc_leaving)
  return;

 if (sc->sc_txbusy)
  return;





 if ((tp->t_termios.c_cflag & CCTS_OFLOW) && !sc->sc_hwoflow &&
     !(sc->sc_hwsig & SER_CTS))
  return;

 sc->sc_txdatasz = ttydisc_getc(tp, sc->sc_txbuf, sc->sc_txfifosz);
 if (sc->sc_txdatasz != 0)
  UART_TRANSMIT(sc);
}
