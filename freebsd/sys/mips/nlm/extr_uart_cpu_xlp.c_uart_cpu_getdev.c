
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int regshft; int rclk; int bsh; void* bst; scalar_t__ chan; } ;
struct uart_devinfo {int databits; int stopbits; int parity; int baudrate; TYPE_1__ bas; int ops; } ;


 int BOARD_CONSOLE_SPEED ;
 int BOARD_CONSOLE_UART ;
 int UART_PARITY_NONE ;
 int XLP_IO_CLK ;
 int nlm_get_uart_regbase (int ,int ) ;
 void* rmi_uart_bus_space ;
 int * uart_bus_space_io ;
 void* uart_bus_space_mem ;
 int uart_getops (int *) ;
 int uart_ns8250_class ;

int
uart_cpu_getdev(int devtype, struct uart_devinfo *di)
{
 di->ops = uart_getops(&uart_ns8250_class);
 di->bas.chan = 0;
 di->bas.bst = rmi_uart_bus_space;
 di->bas.bsh = nlm_get_uart_regbase(0, BOARD_CONSOLE_UART);

 di->bas.regshft = 2;

 di->bas.rclk = XLP_IO_CLK;
 di->baudrate = BOARD_CONSOLE_SPEED;
 di->databits = 8;
 di->stopbits = 1;
 di->parity = UART_PARITY_NONE;

 uart_bus_space_io = ((void*)0);
 uart_bus_space_mem = rmi_uart_bus_space;
 return (0);
}
