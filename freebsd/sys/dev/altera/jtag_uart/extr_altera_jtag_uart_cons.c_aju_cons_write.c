
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int AJU_CONSOLE_LOCK_ASSERT () ;
 int ALTERA_JTAG_UART_CONTROL_AC ;
 int ALTERA_JTAG_UART_CONTROL_WSPACE ;
 int DELAY (int ) ;
 int aju_cons_control_read () ;
 int aju_cons_control_write (int) ;
 int aju_cons_data_write (char) ;
 scalar_t__ aju_cons_jtag_missed ;
 int aju_cons_jtag_present ;
 int altera_jtag_uart_ac_poll_delay ;

__attribute__((used)) static void
aju_cons_write(char ch)
{
 uint32_t v;

 AJU_CONSOLE_LOCK_ASSERT();
 v = aju_cons_control_read();
 if (v & ALTERA_JTAG_UART_CONTROL_AC) {
  aju_cons_jtag_present = 1;
  aju_cons_jtag_missed = 0;
  v &= ~ALTERA_JTAG_UART_CONTROL_AC;
  aju_cons_control_write(v);
 }
 while ((v & ALTERA_JTAG_UART_CONTROL_WSPACE) == 0) {
  if (!aju_cons_jtag_present)
   return;
  DELAY(altera_jtag_uart_ac_poll_delay);
  v = aju_cons_control_read();
  if (v & ALTERA_JTAG_UART_CONTROL_AC) {
   aju_cons_jtag_present = 1;
   v &= ~ALTERA_JTAG_UART_CONTROL_AC;
   aju_cons_control_write(v);
  } else
   aju_cons_jtag_present = 0;
 }
 aju_cons_data_write(ch);
}
