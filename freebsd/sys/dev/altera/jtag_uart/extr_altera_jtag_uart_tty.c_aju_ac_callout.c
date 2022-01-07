
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tty {int dummy; } ;
struct altera_jtag_uart_softc {int* ajus_jtag_presentp; scalar_t__* ajus_jtag_missedp; int ajus_ac_callout; struct tty* ajus_ttyp; } ;


 int AJU_AC_POLLINTERVAL ;
 scalar_t__ AJU_JTAG_MAXMISS ;
 int AJU_LOCK (struct altera_jtag_uart_softc*) ;
 int AJU_UNLOCK (struct altera_jtag_uart_softc*) ;
 int ALTERA_JTAG_UART_CONTROL_AC ;
 int aju_control_read (struct altera_jtag_uart_softc*) ;
 int aju_control_write (struct altera_jtag_uart_softc*,int) ;
 int aju_handle_output (struct altera_jtag_uart_softc*,struct tty*) ;
 int aju_jtag_appeared ;
 int aju_jtag_vanished ;
 int atomic_add_int (int *,int) ;
 int callout_reset (int *,int ,void (*) (void*),struct altera_jtag_uart_softc*) ;
 int tty_lock (struct tty*) ;
 int tty_unlock (struct tty*) ;

__attribute__((used)) static void
aju_ac_callout(void *arg)
{
 struct altera_jtag_uart_softc *sc = arg;
 struct tty *tp = sc->ajus_ttyp;
 uint32_t v;

 tty_lock(tp);
 AJU_LOCK(sc);
 v = aju_control_read(sc);
 if (v & ALTERA_JTAG_UART_CONTROL_AC) {
  v &= ~ALTERA_JTAG_UART_CONTROL_AC;
  aju_control_write(sc, v);
  if (*sc->ajus_jtag_presentp == 0) {
   *sc->ajus_jtag_presentp = 1;
   atomic_add_int(&aju_jtag_appeared, 1);
   aju_handle_output(sc, tp);
  }


  *sc->ajus_jtag_missedp = 0;
 } else if (*sc->ajus_jtag_presentp != 0) {





  if (*sc->ajus_jtag_missedp > AJU_JTAG_MAXMISS) {
   *sc->ajus_jtag_presentp = 0;
   atomic_add_int(&aju_jtag_vanished, 1);
   aju_handle_output(sc, tp);
  } else
   (*sc->ajus_jtag_missedp)++;
 }
 callout_reset(&sc->ajus_ac_callout, AJU_AC_POLLINTERVAL,
     aju_ac_callout, sc);
 AJU_UNLOCK(sc);
 tty_unlock(tp);
}
