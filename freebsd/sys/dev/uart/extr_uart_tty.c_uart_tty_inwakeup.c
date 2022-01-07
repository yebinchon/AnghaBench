
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_softc {scalar_t__ sc_isquelch; int sc_hwiflow; scalar_t__ sc_leaving; } ;
struct TYPE_2__ {int c_cflag; } ;
struct tty {TYPE_1__ t_termios; } ;


 int CRTS_IFLOW ;
 int SER_DRTS ;
 int SER_INT_RXREADY ;
 int SER_RTS ;
 int UART_SETSIG (struct uart_softc*,int) ;
 struct uart_softc* tty_softc (struct tty*) ;
 int uart_sched_softih (struct uart_softc*,int ) ;

__attribute__((used)) static void
uart_tty_inwakeup(struct tty *tp)
{
 struct uart_softc *sc;

 sc = tty_softc(tp);
 if (sc == ((void*)0) || sc->sc_leaving)
  return;

 if (sc->sc_isquelch) {
  if ((tp->t_termios.c_cflag & CRTS_IFLOW) && !sc->sc_hwiflow)
   UART_SETSIG(sc, SER_DRTS|SER_RTS);
  sc->sc_isquelch = 0;
  uart_sched_softih(sc, SER_INT_RXREADY);
 }
}
