
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;
struct altera_jtag_uart_softc {int dummy; } ;


 int AJU_LOCK (struct altera_jtag_uart_softc*) ;
 int AJU_UNLOCK (struct altera_jtag_uart_softc*) ;
 int MA_OWNED ;
 int aju_handle_output (struct altera_jtag_uart_softc*,struct tty*) ;
 int tty_lock_assert (struct tty*,int ) ;
 struct altera_jtag_uart_softc* tty_softc (struct tty*) ;

__attribute__((used)) static void
aju_outwakeup(struct tty *tp)
{
 struct altera_jtag_uart_softc *sc = tty_softc(tp);

 tty_lock_assert(tp, MA_OWNED);

 AJU_LOCK(sc);
 aju_handle_output(sc, tp);
 AJU_UNLOCK(sc);
}
