
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int bsh; int rclk; scalar_t__ regshft; void* bst; scalar_t__ chan; } ;
struct uart_devinfo {int baudrate; int databits; int stopbits; TYPE_1__ bas; int parity; int ops; } ;


 int AR71XX_UART_ADDR ;
 int MIPS_PHYS_TO_KSEG1 (int ) ;
 int UART_PARITY_NONE ;
 void* ar71xx_bus_space_reversed ;
 int ar71xx_uart_freq () ;
 int uart_ar933x_class ;
 int * uart_bus_space_io ;
 void* uart_bus_space_mem ;
 int uart_getops (int *) ;

int
uart_cpu_getdev(int devtype, struct uart_devinfo *di)
{
 uint64_t freq;

 freq = ar71xx_uart_freq();

 di->ops = uart_getops(&uart_ar933x_class);
 di->bas.chan = 0;
 di->bas.bst = ar71xx_bus_space_reversed;
 di->bas.regshft = 0;
 di->bas.rclk = freq;
 di->baudrate = 115200;
 di->databits = 8;
 di->stopbits = 1;

 di->parity = UART_PARITY_NONE;

 uart_bus_space_io = ((void*)0);
 uart_bus_space_mem = ar71xx_bus_space_reversed;
 di->bas.bsh = MIPS_PHYS_TO_KSEG1(AR71XX_UART_ADDR);
 return (0);
}
