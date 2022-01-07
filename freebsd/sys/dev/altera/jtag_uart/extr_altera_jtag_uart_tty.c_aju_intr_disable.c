
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct altera_jtag_uart_softc {int dummy; } ;


 int AJU_LOCK_ASSERT (struct altera_jtag_uart_softc*) ;
 int ALTERA_JTAG_UART_CONTROL_RE ;
 int ALTERA_JTAG_UART_CONTROL_WE ;
 int aju_control_read (struct altera_jtag_uart_softc*) ;
 int aju_control_write (struct altera_jtag_uart_softc*,int) ;
 int aju_intr_disabled ;
 int atomic_add_int (int *,int) ;

__attribute__((used)) static void
aju_intr_disable(struct altera_jtag_uart_softc *sc)
{
 uint32_t v;

 AJU_LOCK_ASSERT(sc);

 atomic_add_int(&aju_intr_disabled, 1);
 v = aju_control_read(sc);
 v &= ~(ALTERA_JTAG_UART_CONTROL_RE | ALTERA_JTAG_UART_CONTROL_WE);
 aju_control_write(sc, v);
}
