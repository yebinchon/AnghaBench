
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct consdev {int dummy; } ;


 int AJU_CONSOLE_LOCK () ;
 int AJU_CONSOLE_LOCK_INIT () ;
 int AJU_CONSOLE_UNLOCK () ;
 int ALTERA_JTAG_UART_CONTROL_AC ;
 int aju_cons_control_read () ;
 int aju_cons_control_write (int ) ;

__attribute__((used)) static void
aju_cninit(struct consdev *cp)
{
 uint32_t v;

 AJU_CONSOLE_LOCK_INIT();

 AJU_CONSOLE_LOCK();
 v = aju_cons_control_read();
 v &= ~ALTERA_JTAG_UART_CONTROL_AC;
 aju_cons_control_write(v);
 AJU_CONSOLE_UNLOCK();
}
