
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {int dummy; } ;


 int SUNW_SETCONSINPUT_OBP ;
 int sbbc_serengeti_set_console_input (int ) ;

__attribute__((used)) static int
sbbc_uart_bus_detach(struct uart_softc *sc)
{


 sbbc_serengeti_set_console_input(SUNW_SETCONSINPUT_OBP);
 return (0);
}
