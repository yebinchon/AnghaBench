
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_phyp_softc {int polltime; int callout; int * irqres; struct tty* tp; } ;
struct tty {int dummy; } ;


 int callout_reset (int *,int ,void (*) (void*),struct uart_phyp_softc*) ;
 int tty_lock (struct tty*) ;
 int tty_unlock (struct tty*) ;
 int ttydisc_rint (struct tty*,unsigned char,int ) ;
 int ttydisc_rint_done (struct tty*) ;
 int uart_phyp_get (struct uart_phyp_softc*,unsigned char*,int) ;

__attribute__((used)) static void
uart_phyp_intr(void *v)
{
 struct uart_phyp_softc *sc = v;
 struct tty *tp = sc->tp;
 unsigned char c;
 int len;

 tty_lock(tp);
 while ((len = uart_phyp_get(sc, &c, 1)) > 0)
  ttydisc_rint(tp, c, 0);
 ttydisc_rint_done(tp);
 tty_unlock(tp);

 if (sc->irqres == ((void*)0))
  callout_reset(&sc->callout, sc->polltime, uart_phyp_intr, sc);
}
