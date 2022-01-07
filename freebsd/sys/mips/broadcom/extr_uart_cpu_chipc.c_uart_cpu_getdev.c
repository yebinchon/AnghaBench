
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct uart_devinfo {int dummy; } ;


 int CHIPC_UART_BAUDRATE ;
 scalar_t__ CHIPC_UART_MAX ;
 int UART_DEV_CONSOLE ;
 int UART_DEV_DBGPORT ;
 int UART_FLAGS_CONSOLE (int) ;
 int UART_FLAGS_DBGPORT (int) ;
 int chipc_uart_class ;
 int mips_bus_space_generic ;
 scalar_t__ resource_int_value (char*,scalar_t__,char*,int*) ;
 int * uart_bus_space_io ;
 int uart_bus_space_mem ;
 int uart_cpu_init (struct uart_devinfo*,scalar_t__,int) ;
 scalar_t__ uart_getenv (int,struct uart_devinfo*,int ) ;
 scalar_t__ uart_getenv_cfe (int,struct uart_devinfo*) ;

int
uart_cpu_getdev(int devtype, struct uart_devinfo *di)
{
 int ivar;

 uart_bus_space_io = ((void*)0);
 uart_bus_space_mem = mips_bus_space_generic;
 if (uart_getenv(devtype, di, chipc_uart_class) == 0)
  return (0);


 for (u_int i = 0; i < CHIPC_UART_MAX; i++) {
  if (resource_int_value("uart", i, "flags", &ivar))
   continue;


  if (devtype == UART_DEV_CONSOLE && !UART_FLAGS_CONSOLE(ivar))
   continue;

  if (devtype == UART_DEV_DBGPORT && !UART_FLAGS_DBGPORT(ivar))
   continue;

  if (resource_int_value("uart", i, "disabled", &ivar) == 0 &&
      ivar == 0)
   continue;


  if (resource_int_value("uart", i, "baud", &ivar) != 0)
   ivar = CHIPC_UART_BAUDRATE;

  return (uart_cpu_init(di, i, ivar));
 }


 return (uart_cpu_init(di, 0, CHIPC_UART_BAUDRATE));
}
