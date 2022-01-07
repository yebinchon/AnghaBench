
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rclk; scalar_t__ regshft; int bsh; int bst; scalar_t__ chan; } ;
struct uart_devinfo {unsigned int baudrate; int databits; int stopbits; int parity; TYPE_1__ bas; int ops; } ;
struct uart_class {int dummy; } ;


 int ENXIO ;
 int UART_DEV_CONSOLE ;
 int UART_DEV_DBGPORT ;
 int UART_FLAGS_CONSOLE (unsigned int) ;
 int UART_FLAGS_DBGPORT (unsigned int) ;
 int UART_PARITY_NONE ;
 scalar_t__ bus_space_map (int ,unsigned int,int ,int ,int *) ;
 scalar_t__ resource_int_value (char*,unsigned int,char*,unsigned int*) ;
 int uart_bus_space_io ;
 scalar_t__ uart_cpu_acpi_spcr (int,struct uart_devinfo*) ;
 scalar_t__ uart_getenv (int,struct uart_devinfo*,struct uart_class*) ;
 int uart_getops (struct uart_class*) ;
 int uart_getrange (struct uart_class*) ;
 struct uart_class uart_ns8250_class ;

int
uart_cpu_getdev(int devtype, struct uart_devinfo *di)
{
 struct uart_class *class;
 unsigned int i, ivar;

 class = &uart_ns8250_class;
 if (class == ((void*)0))
  return (ENXIO);


 if (uart_getenv(devtype, di, class) == 0)
  return (0);
 for (i = 0; i < 4; i++) {
  if (resource_int_value("uart", i, "flags", &ivar))
   continue;
  if (devtype == UART_DEV_CONSOLE && !UART_FLAGS_CONSOLE(ivar))
   continue;
  if (devtype == UART_DEV_DBGPORT && !UART_FLAGS_DBGPORT(ivar))
   continue;




  if (resource_int_value("uart", i, "disabled", &ivar) == 0 &&
      ivar != 0)
   continue;
  if (resource_int_value("uart", i, "port", &ivar) != 0 ||
      ivar == 0)
   continue;




  di->ops = uart_getops(class);
  di->bas.chan = 0;
  di->bas.bst = uart_bus_space_io;
  if (bus_space_map(di->bas.bst, ivar, uart_getrange(class), 0,
      &di->bas.bsh) != 0)
   continue;
  di->bas.regshft = 0;
  di->bas.rclk = 0;
  if (resource_int_value("uart", i, "baud", &ivar) != 0)
   ivar = 0;
  di->baudrate = ivar;
  di->databits = 8;
  di->stopbits = 1;
  di->parity = UART_PARITY_NONE;
  return (0);
 }

 return (ENXIO);
}
