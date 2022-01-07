
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ vm_paddr_t ;
struct TYPE_7__ {scalar_t__ regshft; int regiowidth; int bsh; int bst; scalar_t__ rclk; scalar_t__ chan; } ;
struct uart_devinfo {int databits; int stopbits; int baudrate; TYPE_2__ bas; int ops; int parity; } ;
struct uart_class {int dummy; } ;
struct acpi_uart_compat_data {int cd_quirks; scalar_t__ cd_regshft; struct uart_class* cd_class; } ;
struct TYPE_6__ {int SpaceId; scalar_t__ AccessWidth; int BitWidth; int Address; } ;
struct TYPE_8__ {int BaudRate; TYPE_1__ SerialPort; int InterfaceType; } ;
typedef TYPE_3__ ACPI_TABLE_SPCR ;


 int ACPI_SIG_SPCR ;
 int ENXIO ;
 int UART_DEV_CONSOLE ;
 int UART_F_IGNORE_SPCR_REGSHFT ;
 int UART_PARITY_NONE ;
 scalar_t__ acpi_find_table (int ) ;
 TYPE_3__* acpi_map_table (scalar_t__,int ) ;
 int acpi_unmap_table (TYPE_3__*) ;
 int bus_space_map (int ,int ,int ,int ,int *) ;
 int printf (char*,...) ;
 int uart_bus_space_io ;
 int uart_bus_space_mem ;
 struct acpi_uart_compat_data* uart_cpu_acpi_scan (int ) ;
 int uart_getops (struct uart_class*) ;
 int uart_getrange (struct uart_class*) ;

int
uart_cpu_acpi_spcr(int devtype, struct uart_devinfo *di)
{
 vm_paddr_t spcr_physaddr;
 ACPI_TABLE_SPCR *spcr;
 struct acpi_uart_compat_data *cd;
 struct uart_class *class;
 int error = ENXIO;


 if (devtype != UART_DEV_CONSOLE)
  return (error);


 spcr_physaddr = acpi_find_table(ACPI_SIG_SPCR);
 if (spcr_physaddr == 0)
  return (error);
 spcr = acpi_map_table(spcr_physaddr, ACPI_SIG_SPCR);
 if (spcr == ((void*)0)) {
  printf("Unable to map the SPCR table!\n");
  return (error);
 }


 cd = uart_cpu_acpi_scan(spcr->InterfaceType);
 if (cd == ((void*)0))
  goto out;
 class = cd->cd_class;


 di->bas.chan = 0;
 di->bas.rclk = 0;
 di->databits = 8;
 di->stopbits = 1;
 di->parity = UART_PARITY_NONE;
 di->ops = uart_getops(class);


 switch (spcr->SerialPort.SpaceId) {
 case 0:
  di->bas.bst = uart_bus_space_mem;
  break;
 case 1:
  di->bas.bst = uart_bus_space_io;
  break;
 default:
  printf("UART in unrecognized address space: %d!\n",
      (int)spcr->SerialPort.SpaceId);
  goto out;
 }
 if (spcr->SerialPort.AccessWidth == 0)
  di->bas.regshft = 0;
 else
  di->bas.regshft = spcr->SerialPort.AccessWidth - 1;
 di->bas.regiowidth = spcr->SerialPort.BitWidth / 8;
 switch (spcr->BaudRate) {
 case 0:

  di->baudrate = 0;
  break;
 case 3:
  di->baudrate = 9600;
  break;
 case 4:
  di->baudrate = 19200;
  break;
 case 6:
  di->baudrate = 57600;
  break;
 case 7:
  di->baudrate = 115200;
  break;
 default:
  printf("SPCR has reserved BaudRate value: %d!\n",
      (int)spcr->BaudRate);
  goto out;
 }


 if ((cd->cd_quirks & UART_F_IGNORE_SPCR_REGSHFT) ==
     UART_F_IGNORE_SPCR_REGSHFT) {
  di->bas.regshft = cd->cd_regshft;
 }


 error = bus_space_map(di->bas.bst, spcr->SerialPort.Address,
     uart_getrange(class), 0, &di->bas.bsh);

out:
 acpi_unmap_table(spcr);
 return (error);
}
