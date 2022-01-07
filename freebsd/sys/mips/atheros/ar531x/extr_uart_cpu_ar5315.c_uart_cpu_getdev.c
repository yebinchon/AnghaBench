
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int regshft; int bsh; int rclk; void* bst; scalar_t__ chan; } ;
struct uart_devinfo {int baudrate; int databits; int stopbits; TYPE_1__ bas; int parity; int ops; } ;


 int UART_PARITY_NONE ;
 int ar531x_ahb_freq () ;
 int ar531x_uart_addr () ;
 void* ar71xx_bus_space_reversed ;
 int * uart_bus_space_io ;
 void* uart_bus_space_mem ;
 int uart_getops (int *) ;
 int uart_ns8250_class ;

int
uart_cpu_getdev(int devtype, struct uart_devinfo *di)
{
 uint64_t freq;

 freq = ar531x_ahb_freq();

 di->ops = uart_getops(&uart_ns8250_class);
 di->bas.chan = 0;
 di->bas.bst = ar71xx_bus_space_reversed;
 di->bas.regshft = 2;
 di->bas.rclk = freq;
 di->baudrate = 9600;
 di->databits = 8;
 di->stopbits = 1;

 di->parity = UART_PARITY_NONE;

 uart_bus_space_io = ((void*)0);
 uart_bus_space_mem = ar71xx_bus_space_reversed;
 di->bas.bsh = ar531x_uart_addr();
 return (0);
}
