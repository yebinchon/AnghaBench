
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {int sc_txbusy; scalar_t__ sc_leaving; } ;
struct tty {int dummy; } ;


 int FALSE ;
 struct uart_softc* tty_softc (struct tty*) ;

__attribute__((used)) static bool
uart_tty_busy(struct tty *tp)
{
 struct uart_softc *sc;

 sc = tty_softc(tp);
 if (sc == ((void*)0) || sc->sc_leaving)
                return (FALSE);

 return (sc->sc_txbusy);
}
