
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bsh; int bst; void* rclk; void* regshft; void* chan; void* busy_detect; } ;
struct uart_devinfo {int baudrate; int databits; int stopbits; TYPE_1__ bas; int ops; int parity; } ;
struct uart_class {int dummy; } ;
typedef unsigned int bus_addr_t ;


 int EINVAL ;
 int ENXIO ;


 int UART_PARITY_NONE ;
 int bus_space_map (int ,unsigned int,int ,int ,int *) ;
 int freeenv (char*) ;
 char* kern_getenv (char*) ;
 int uart_bus_space_io ;
 int uart_bus_space_mem ;
 int uart_getops (struct uart_class*) ;
 int uart_getrange (struct uart_class*) ;
 unsigned int uart_parse_addr (char const**) ;
 struct uart_class* uart_parse_class (struct uart_class*,char const**) ;
 void* uart_parse_long (char const**) ;
 int uart_parse_parity (char const**) ;
 int uart_parse_tag (char const**) ;

int
uart_getenv(int devtype, struct uart_devinfo *di, struct uart_class *class)
{
 const char *spec;
 char *cp;
 bus_addr_t addr = ~0U;
 int error;





 if (class == ((void*)0))
  return (ENXIO);







 switch (devtype) {
 case 140:
  cp = kern_getenv("hw.uart.console");
  break;
 case 139:
  cp = kern_getenv("hw.uart.dbgport");
  break;
 default:
  cp = ((void*)0);
  break;
 }

 if (cp == ((void*)0))
  return (ENXIO);


 di->bas.chan = 0;
 di->bas.regshft = 0;
 di->bas.rclk = 0;
 di->baudrate = 0;
 di->databits = 8;
 di->stopbits = 1;
 di->parity = UART_PARITY_NONE;


 spec = cp;
 for (;;) {
  switch (uart_parse_tag(&spec)) {
  case 138:
   di->bas.busy_detect = uart_parse_long(&spec);
   break;
  case 137:
   di->baudrate = uart_parse_long(&spec);
   break;
  case 136:
   di->bas.chan = uart_parse_long(&spec);
   break;
  case 135:
   di->databits = uart_parse_long(&spec);
   break;
  case 134:
   class = uart_parse_class(class, &spec);
   break;
  case 133:
   di->bas.bst = uart_bus_space_io;
   addr = uart_parse_addr(&spec);
   break;
  case 132:
   di->bas.bst = uart_bus_space_mem;
   addr = uart_parse_addr(&spec);
   break;
  case 131:
   di->parity = uart_parse_parity(&spec);
   break;
  case 130:
   di->bas.regshft = uart_parse_long(&spec);
   break;
  case 129:
   di->stopbits = uart_parse_long(&spec);
   break;
  case 128:
   di->bas.rclk = uart_parse_long(&spec);
   break;
  default:
   freeenv(cp);
   return (EINVAL);
  }
  if (*spec == '\0')
   break;
  if (*spec != ',') {
   freeenv(cp);
   return (EINVAL);
  }
  spec++;
 }
 freeenv(cp);





 if (addr == ~0U)
  return (EINVAL);
 if (di->baudrate >= 19200) {
  if (di->baudrate % 19200)
   di->baudrate = 0;
 } else if (di->baudrate >= 1200) {
  if (di->baudrate % 1200)
   di->baudrate = 0;
 } else if (di->baudrate > 0) {
  if (di->baudrate % 75)
   di->baudrate = 0;
 } else
  di->baudrate = 0;


 di->ops = uart_getops(class);
 error = bus_space_map(di->bas.bst, addr, uart_getrange(class), 0,
     &di->bas.bsh);
 return (error);
}
