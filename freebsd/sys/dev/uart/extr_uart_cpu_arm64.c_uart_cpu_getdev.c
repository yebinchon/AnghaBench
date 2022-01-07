
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u_int ;
struct TYPE_2__ {int bst; int bsh; void* rclk; void* regiowidth; void* regshft; scalar_t__ chan; } ;
struct uart_devinfo {int baudrate; int databits; int stopbits; TYPE_1__ bas; int parity; int ops; } ;
struct uart_class {int dummy; } ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;


 int ENXIO ;
 int UART_DEV_CONSOLE ;
 int UART_PARITY_NONE ;
 int * uart_bus_space_io ;
 int uart_bus_space_mem ;
 scalar_t__ uart_cpu_acpi_spcr (int,struct uart_devinfo*) ;
 int uart_cpu_fdt_probe (struct uart_class**,int *,int *,int*,void**,void**,void**) ;
 int uart_getenv (int,struct uart_devinfo*,struct uart_class*) ;
 int uart_getops (struct uart_class*) ;
 struct uart_class uart_ns8250_class ;

int
uart_cpu_getdev(int devtype, struct uart_devinfo *di)
{
 struct uart_class *class;
 bus_space_handle_t bsh;
 bus_space_tag_t bst;
 u_int rclk, shift, iowidth;
 int br, err;


 class = &uart_ns8250_class;
 err = uart_getenv(devtype, di, class);
 if (err == 0)
  return (0);







 if (devtype != UART_DEV_CONSOLE)
  return (ENXIO);

 err = ENXIO;






 if (err != 0)
  return (err);




 di->bas.chan = 0;
 di->bas.regshft = shift;
 di->bas.regiowidth = iowidth;
 di->baudrate = br;
 di->bas.rclk = rclk;
 di->ops = uart_getops(class);
 di->databits = 8;
 di->stopbits = 1;
 di->parity = UART_PARITY_NONE;
 di->bas.bst = bst;
 di->bas.bsh = bsh;
 uart_bus_space_mem = di->bas.bst;
 uart_bus_space_io = ((void*)0);

 return (0);
}
