
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tty {int dummy; } ;
struct altera_jtag_uart_softc {struct tty* ajus_ttyp; } ;


 int AJU_LOCK (struct altera_jtag_uart_softc*) ;
 int AJU_UNLOCK (struct altera_jtag_uart_softc*) ;
 int ALTERA_JTAG_UART_CONTROL_RI ;
 int ALTERA_JTAG_UART_CONTROL_WI ;
 int aju_control_read (struct altera_jtag_uart_softc*) ;
 int aju_handle_input (struct altera_jtag_uart_softc*,struct tty*) ;
 int aju_handle_output (struct altera_jtag_uart_softc*,struct tty*) ;
 int aju_intr_read_count ;
 int aju_intr_write_count ;
 int atomic_add_int (int *,int) ;
 int tty_lock (struct tty*) ;
 int tty_unlock (struct tty*) ;

__attribute__((used)) static void
aju_intr(void *arg)
{
 struct altera_jtag_uart_softc *sc = arg;
 struct tty *tp = sc->ajus_ttyp;
 uint32_t v;

 tty_lock(tp);
 AJU_LOCK(sc);
 v = aju_control_read(sc);
 if (v & ALTERA_JTAG_UART_CONTROL_RI) {
  atomic_add_int(&aju_intr_read_count, 1);
  aju_handle_input(sc, tp);
 }
 if (v & ALTERA_JTAG_UART_CONTROL_WI) {
  atomic_add_int(&aju_intr_write_count, 1);
  aju_handle_output(sc, tp);
 }
 AJU_UNLOCK(sc);
 tty_unlock(tp);
}
