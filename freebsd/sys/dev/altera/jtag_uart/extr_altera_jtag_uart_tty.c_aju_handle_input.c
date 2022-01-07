
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;
struct altera_jtag_uart_softc {int ajus_flags; int ajus_alt_break_state; } ;


 int AJU_LOCK (struct altera_jtag_uart_softc*) ;
 int AJU_LOCK_ASSERT (struct altera_jtag_uart_softc*) ;
 int AJU_UNLOCK (struct altera_jtag_uart_softc*) ;
 int ALTERA_JTAG_UART_FLAG_CONSOLE ;
 int MA_OWNED ;
 int aju_read (struct altera_jtag_uart_softc*) ;
 scalar_t__ aju_readable (struct altera_jtag_uart_softc*) ;
 int kdb_alt_break (int,int *) ;
 int tty_lock_assert (struct tty*,int ) ;
 int ttydisc_rint (struct tty*,int,int ) ;
 int ttydisc_rint_done (struct tty*) ;

__attribute__((used)) static void
aju_handle_input(struct altera_jtag_uart_softc *sc, struct tty *tp)
{
 int c;

 tty_lock_assert(tp, MA_OWNED);
 AJU_LOCK_ASSERT(sc);

 while (aju_readable(sc)) {
  c = aju_read(sc);
  AJU_UNLOCK(sc);




  ttydisc_rint(tp, c, 0);
  AJU_LOCK(sc);
 }
 AJU_UNLOCK(sc);
 ttydisc_rint_done(tp);
 AJU_LOCK(sc);
}
