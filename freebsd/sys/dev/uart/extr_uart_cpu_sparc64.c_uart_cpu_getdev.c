
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int regshft; int chan; int * bst; int bsh; scalar_t__ rclk; } ;
struct uart_devinfo {int baudrate; int databits; int stopbits; void* parity; TYPE_1__ bas; int ops; } ;
struct uart_class {int dummy; } ;
typedef int phandle_t ;
typedef int dev ;
typedef int compat ;
typedef int bus_addr_t ;
typedef int buf ;


 int ENXIO ;
 int OF_decode_addr (int,int ,int*,int*) ;
 int OF_finddevice (char*) ;
 int OF_getprop (int,char*,char*,int) ;



 void* UART_PARITY_EVEN ;
 void* UART_PARITY_NONE ;
 void* UART_PARITY_ODD ;
 int * bst_store ;
 int snprintf (char*,int,char*,char*) ;
 int sparc64_fake_bustag (int,int,int *) ;
 int sscanf (char*,char*,int*,int*,char*,int*,char*) ;
 int strcmp (char*,char*) ;
 void* uart_cpu_channel (char*) ;
 int uart_cpu_getdev_console (int,char*,int) ;
 int uart_cpu_getdev_dbgport (char*,int) ;
 int uart_cpu_getdev_keyboard (char*,int) ;
 int uart_getops (struct uart_class*) ;
 int uart_getrange (struct uart_class*) ;
 struct uart_class uart_ns8250_class ;
 struct uart_class uart_sab82532_class ;
 struct uart_class uart_sbbc_class ;
 struct uart_class uart_z8530_class ;

int
uart_cpu_getdev(int devtype, struct uart_devinfo *di)
{
 char buf[32], compat[32], dev[64];
 struct uart_class *class;
 phandle_t input, options;
 bus_addr_t addr;
 int baud, bits, error, range, space, stop;
 char flag, par;

 if ((options = OF_finddevice("/options")) == -1)
  return (ENXIO);
 switch (devtype) {
 case 130:
  input = uart_cpu_getdev_console(options, dev, sizeof(dev));
  break;
 case 129:
  input = uart_cpu_getdev_dbgport(dev, sizeof(dev));
  break;
 case 128:
  input = uart_cpu_getdev_keyboard(dev, sizeof(dev));
  break;
 default:
  input = -1;
  break;
 }
 if (input == -1)
  return (ENXIO);
 error = OF_decode_addr(input, 0, &space, &addr);
 if (error)
  return (error);


 if (OF_getprop(input, "name", buf, sizeof(buf)) == -1)
  return (ENXIO);
 if (OF_getprop(input, "compatible", compat, sizeof(compat)) == -1)
  compat[0] = '\0';
 di->bas.regshft = 0;
 di->bas.rclk = 0;
 class = ((void*)0);
 if (!strcmp(buf, "se") || !strcmp(buf, "FJSV,se") ||
     !strcmp(compat, "sab82532")) {
  class = &uart_sab82532_class;

  if ((di->bas.chan = uart_cpu_channel(dev)) == 0)
   return (ENXIO);
  addr += uart_getrange(class) * (di->bas.chan - 1);
 } else if (!strcmp(buf, "zs")) {
  class = &uart_z8530_class;
  if ((di->bas.chan = uart_cpu_channel(dev)) == 0) {





   if (devtype == 128)
    di->bas.chan = 1;
   else
    return (ENXIO);
  }
  di->bas.regshft = 1;
  range = uart_getrange(class) << di->bas.regshft;
  addr += range - range * (di->bas.chan - 1);
 } else if (!strcmp(buf, "lom-console") || !strcmp(buf, "su") ||
     !strcmp(buf, "su_pnp") || !strcmp(compat, "rsc-console") ||
     !strcmp(compat, "su") || !strcmp(compat, "su16550") ||
     !strcmp(compat, "su16552")) {
  class = &uart_ns8250_class;
  di->bas.chan = 0;
 } else if (!strcmp(compat, "sgsbbc")) {
  class = &uart_sbbc_class;
  di->bas.chan = 0;
 }
 if (class == ((void*)0))
  return (ENXIO);


 di->ops = uart_getops(class);
 di->bas.bst = &bst_store[devtype];
 di->bas.bsh = sparc64_fake_bustag(space, addr, di->bas.bst);


 if (devtype == 128)
  di->baudrate = 1200;
 else if (!strcmp(compat, "rsc-console"))
  di->baudrate = 115200;
 else
  di->baudrate = 9600;
 di->databits = 8;
 di->stopbits = 1;
 di->parity = UART_PARITY_NONE;
 snprintf(buf, sizeof(buf), "%s-mode", dev);
 if (OF_getprop(options, buf, buf, sizeof(buf)) == -1 &&
     OF_getprop(input, "ssp-console-modes", buf, sizeof(buf)) == -1)
  return (0);
 if (sscanf(buf, "%d,%d,%c,%d,%c", &baud, &bits, &par, &stop, &flag)
     != 5)
  return (0);
 di->baudrate = baud;
 di->databits = bits;
 di->stopbits = stop;
 di->parity = (par == 'n') ? UART_PARITY_NONE :
     (par == 'o') ? UART_PARITY_ODD : UART_PARITY_EVEN;
 return (0);
}
