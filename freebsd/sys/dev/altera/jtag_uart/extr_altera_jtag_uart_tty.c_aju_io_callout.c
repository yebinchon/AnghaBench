
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;
struct altera_jtag_uart_softc {int ajus_io_callout; struct tty* ajus_ttyp; } ;


 int AJU_IO_POLLINTERVAL ;
 int AJU_LOCK (struct altera_jtag_uart_softc*) ;
 int AJU_UNLOCK (struct altera_jtag_uart_softc*) ;
 int aju_handle_input (struct altera_jtag_uart_softc*,struct tty*) ;
 int aju_handle_output (struct altera_jtag_uart_softc*,struct tty*) ;
 int callout_reset (int *,int ,void (*) (void*),struct altera_jtag_uart_softc*) ;
 int tty_lock (struct tty*) ;
 int tty_unlock (struct tty*) ;

__attribute__((used)) static void
aju_io_callout(void *arg)
{
 struct altera_jtag_uart_softc *sc = arg;
 struct tty *tp = sc->ajus_ttyp;

 tty_lock(tp);
 AJU_LOCK(sc);
 aju_handle_input(sc, tp);
 aju_handle_output(sc, tp);







 callout_reset(&sc->ajus_io_callout, AJU_IO_POLLINTERVAL,
     aju_io_callout, sc);
 AJU_UNLOCK(sc);
 tty_unlock(tp);
}
