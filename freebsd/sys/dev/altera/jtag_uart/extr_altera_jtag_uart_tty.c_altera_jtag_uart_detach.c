
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;
struct altera_jtag_uart_softc {int ajus_flags; int ajus_ac_callout; int ajus_io_callout; int ajus_irq_cookie; int * ajus_irq_res; int ajus_dev; struct tty* ajus_ttyp; } ;


 int AJU_LOCK (struct altera_jtag_uart_softc*) ;
 int AJU_LOCK_DESTROY (struct altera_jtag_uart_softc*) ;
 int AJU_UNLOCK (struct altera_jtag_uart_softc*) ;
 int ALTERA_JTAG_UART_FLAG_CONSOLE ;
 int * aju_cons_sc ;
 int aju_intr_disable (struct altera_jtag_uart_softc*) ;
 int bus_teardown_intr (int ,int *,int ) ;
 int callout_drain (int *) ;
 int tty_lock (struct tty*) ;
 int tty_rel_gone (struct tty*) ;

void
altera_jtag_uart_detach(struct altera_jtag_uart_softc *sc)
{
 struct tty *tp = sc->ajus_ttyp;





 if (sc->ajus_irq_res != ((void*)0)) {
  AJU_LOCK(sc);
  aju_intr_disable(sc);
  AJU_UNLOCK(sc);
  bus_teardown_intr(sc->ajus_dev, sc->ajus_irq_res,
      sc->ajus_irq_cookie);
 } else
  callout_drain(&sc->ajus_io_callout);
 callout_drain(&sc->ajus_ac_callout);
 if (sc->ajus_flags & ALTERA_JTAG_UART_FLAG_CONSOLE)
  aju_cons_sc = ((void*)0);
 tty_lock(tp);
 tty_rel_gone(tp);
 AJU_LOCK_DESTROY(sc);
}
