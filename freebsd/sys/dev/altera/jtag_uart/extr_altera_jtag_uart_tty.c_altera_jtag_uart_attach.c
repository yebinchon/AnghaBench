
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;
struct altera_jtag_uart_softc {int ajus_flags; int ajus_ac_callout; int ajus_io_callout; int * ajus_irq_res; int ajus_unit; struct tty* ajus_ttyp; int ajus_dev; int ajus_irq_cookie; int ajus_jtag_missed; int * ajus_jtag_missedp; int ajus_jtag_present; int * ajus_jtag_presentp; int ajus_buffer_data; int * ajus_buffer_datap; int ajus_buffer_valid; int * ajus_buffer_validp; int ajus_lock; int * ajus_lockp; int ajus_mem_res; } ;


 int AJU_AC_POLLINTERVAL ;
 int AJU_IO_POLLINTERVAL ;
 int AJU_LOCK (struct altera_jtag_uart_softc*) ;
 int AJU_LOCK_DESTROY (struct altera_jtag_uart_softc*) ;
 int AJU_LOCK_INIT (struct altera_jtag_uart_softc*) ;
 int AJU_TTYNAME ;
 int AJU_UNLOCK (struct altera_jtag_uart_softc*) ;
 int ALTERA_JTAG_UART_FLAG_CONSOLE ;
 scalar_t__ BERI_UART_BASE ;
 int INTR_ENTROPY ;
 int INTR_MPSAFE ;
 int INTR_TYPE_TTY ;
 int aju_ac_callout ;
 int aju_cons_buffer_data ;
 int aju_cons_buffer_valid ;
 int aju_cons_jtag_missed ;
 int aju_cons_jtag_present ;
 int aju_cons_lock ;
 struct altera_jtag_uart_softc* aju_cons_sc ;
 int aju_intr ;
 int aju_intr_disable (struct altera_jtag_uart_softc*) ;
 int aju_intr_readable_enable (struct altera_jtag_uart_softc*) ;
 int aju_io_callout ;
 int aju_ttydevsw ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct altera_jtag_uart_softc*,int *) ;
 int callout_init (int *,int) ;
 int callout_reset (int *,int ,int ,struct altera_jtag_uart_softc*) ;
 int device_printf (int ,char*) ;
 scalar_t__ rman_get_start (int ) ;
 struct tty* tty_alloc (int *,struct altera_jtag_uart_softc*) ;
 int tty_init_console (struct tty*,int ) ;
 int tty_makedev (struct tty*,int *,char*,int ,int ) ;

int
altera_jtag_uart_attach(struct altera_jtag_uart_softc *sc)
{
 struct tty *tp;
 int error;

 AJU_LOCK_INIT(sc);






 if (rman_get_start(sc->ajus_mem_res) == BERI_UART_BASE) {
  sc->ajus_lockp = &aju_cons_lock;
  sc->ajus_buffer_validp = &aju_cons_buffer_valid;
  sc->ajus_buffer_datap = &aju_cons_buffer_data;
  sc->ajus_jtag_presentp = &aju_cons_jtag_present;
  sc->ajus_jtag_missedp = &aju_cons_jtag_missed;
  sc->ajus_flags |= ALTERA_JTAG_UART_FLAG_CONSOLE;
 } else {
  sc->ajus_lockp = &sc->ajus_lock;
  sc->ajus_buffer_validp = &sc->ajus_buffer_valid;
  sc->ajus_buffer_datap = &sc->ajus_buffer_data;
  sc->ajus_jtag_presentp = &sc->ajus_jtag_present;
  sc->ajus_jtag_missedp = &sc->ajus_jtag_missed;
 }







 AJU_LOCK(sc);
 aju_intr_disable(sc);
 AJU_UNLOCK(sc);
 if (sc->ajus_irq_res != ((void*)0)) {
  error = bus_setup_intr(sc->ajus_dev, sc->ajus_irq_res,
      INTR_ENTROPY | INTR_TYPE_TTY | INTR_MPSAFE, ((void*)0),
      aju_intr, sc, &sc->ajus_irq_cookie);
  if (error) {
   device_printf(sc->ajus_dev,
       "could not activate interrupt\n");
   AJU_LOCK_DESTROY(sc);
   return (error);
  }
 }
 tp = sc->ajus_ttyp = tty_alloc(&aju_ttydevsw, sc);
 if (sc->ajus_flags & ALTERA_JTAG_UART_FLAG_CONSOLE) {
  aju_cons_sc = sc;
  tty_init_console(tp, 0);
 }
 tty_makedev(tp, ((void*)0), "%s%d", AJU_TTYNAME, sc->ajus_unit);





 if (sc->ajus_irq_res != ((void*)0)) {
  AJU_LOCK(sc);
  aju_intr_readable_enable(sc);
  AJU_UNLOCK(sc);
 } else {
  callout_init(&sc->ajus_io_callout, 1);
  callout_reset(&sc->ajus_io_callout, AJU_IO_POLLINTERVAL,
      aju_io_callout, sc);
 }
 callout_init(&sc->ajus_ac_callout, 1);
 callout_reset(&sc->ajus_ac_callout, AJU_AC_POLLINTERVAL,
     aju_ac_callout, sc);
 return (0);
}
