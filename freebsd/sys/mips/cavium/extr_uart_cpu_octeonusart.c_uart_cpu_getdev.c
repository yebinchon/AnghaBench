
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int regshft; scalar_t__ rclk; int bsh; int * bst; scalar_t__ chan; } ;
struct uart_devinfo {int baudrate; int databits; int stopbits; int parity; TYPE_1__ bas; int ops; } ;
struct uart_class {int dummy; } ;


 int CVMX_MIO_UARTX_RBR (int ) ;
 int ENXIO ;
 int UART_PARITY_NONE ;
 scalar_t__ bus_space_map (int *,int ,int ,int ,int *) ;
 int octeon_uart_tag ;
 int * uart_bus_space_io ;
 int * uart_bus_space_mem ;
 scalar_t__ uart_getenv (int,struct uart_devinfo*,struct uart_class*) ;
 int uart_getops (struct uart_class*) ;
 int uart_getrange (struct uart_class*) ;
 struct uart_class uart_oct16550_class ;

int
uart_cpu_getdev(int devtype, struct uart_devinfo *di)
{
 struct uart_class *class = &uart_oct16550_class;





 uart_bus_space_io = ((void*)0);
 uart_bus_space_mem = &octeon_uart_tag;
 di->bas.bst = uart_bus_space_mem;





 if (uart_getenv(devtype, di, class) == 0)
  return (0);




 di->ops = uart_getops(class);
 di->bas.chan = 0;

 if (bus_space_map(di->bas.bst, CVMX_MIO_UARTX_RBR(0),
     uart_getrange(class), 0, &di->bas.bsh) != 0)
  return (ENXIO);
 di->bas.regshft = 3;
 di->bas.rclk = 0;
 di->baudrate = 115200;
 di->databits = 8;
 di->stopbits = 1;
 di->parity = UART_PARITY_NONE;

 return (0);
}
