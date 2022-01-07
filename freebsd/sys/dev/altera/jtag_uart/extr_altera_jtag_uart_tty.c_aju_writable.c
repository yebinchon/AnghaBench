
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct altera_jtag_uart_softc {int dummy; } ;


 int ALTERA_JTAG_UART_CONTROL_WSPACE ;
 int aju_control_read (struct altera_jtag_uart_softc*) ;

__attribute__((used)) static inline int
aju_writable(struct altera_jtag_uart_softc *sc)
{

 return ((aju_control_read(sc) &
     ALTERA_JTAG_UART_CONTROL_WSPACE) != 0);
}
