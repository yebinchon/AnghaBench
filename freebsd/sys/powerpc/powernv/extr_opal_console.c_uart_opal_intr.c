
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_opal_softc {int polltime; int callout; int * irqres; struct tty* tp; } ;
struct tty {int dummy; } ;


 int OPAL_POLL_EVENTS ;
 int callout_reset (int *,int ,void (*) (void*),struct uart_opal_softc*) ;
 int opal_call (int ,int *) ;
 int tty_lock (struct tty*) ;
 int tty_unlock (struct tty*) ;
 int ttydisc_rint (struct tty*,int,int ) ;
 int ttydisc_rint_done (struct tty*) ;
 int uart_opal_getc (struct uart_opal_softc*) ;

__attribute__((used)) static void
uart_opal_intr(void *v)
{
 struct uart_opal_softc *sc = v;
 struct tty *tp = sc->tp;
 int c;

 tty_lock(tp);
 while ((c = uart_opal_getc(sc)) > 0)
  ttydisc_rint(tp, c, 0);
 ttydisc_rint_done(tp);
 tty_unlock(tp);

 opal_call(OPAL_POLL_EVENTS, ((void*)0));

 if (sc->irqres == ((void*)0))
  callout_reset(&sc->callout, sc->polltime, uart_opal_intr, sc);
}
