
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rclk; scalar_t__ regshft; int bsh; void* bst; scalar_t__ chan; } ;
struct uart_devinfo {int databits; int stopbits; int parity; scalar_t__ baudrate; TYPE_1__ bas; int ops; } ;


 int MALTA_UART0ADR ;
 int MIPS_PHYS_TO_KSEG1 (int ) ;
 int UART_PARITY_NONE ;
 void* mips_bus_space_generic ;
 int * uart_bus_space_io ;
 void* uart_bus_space_mem ;
 int uart_getops (int *) ;
 int uart_ns8250_class ;

int
uart_cpu_getdev(int devtype, struct uart_devinfo *di)
{
 di->ops = uart_getops(&uart_ns8250_class);
 di->bas.chan = 0;
 di->bas.bst = mips_bus_space_generic;
 di->bas.bsh = MIPS_PHYS_TO_KSEG1(MALTA_UART0ADR);
 di->bas.regshft = 0;
 di->bas.rclk = 0;
 di->baudrate = 0;
 di->databits = 8;
 di->stopbits = 1;
 di->parity = UART_PARITY_NONE;

 uart_bus_space_io = ((void*)0);
 uart_bus_space_mem = mips_bus_space_generic;
 return (0);
}
