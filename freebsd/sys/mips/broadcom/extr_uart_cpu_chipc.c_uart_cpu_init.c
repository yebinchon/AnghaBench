
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_2__ {int rclk; scalar_t__ regshft; scalar_t__ bsh; int bst; scalar_t__ chan; } ;
struct uart_devinfo {int baudrate; int databits; int stopbits; int parity; TYPE_1__ bas; int ops; } ;
typedef scalar_t__ bus_space_handle_t ;


 scalar_t__ BCM_CORE_ADDR (int ,int ,int ) ;
 int CHIPC_UART (scalar_t__) ;
 scalar_t__ CHIPC_UART_MAX ;
 int EINVAL ;
 int UART_PARITY_NONE ;
 int bcm_get_platform () ;
 int bcm_get_uart_rclk (int ) ;
 int cc_addr ;
 int chipc_uart_class ;
 int uart_bus_space_mem ;
 int uart_getops (int ) ;

__attribute__((used)) static int
uart_cpu_init(struct uart_devinfo *di, u_int uart, int baudrate)
{
 if (uart >= CHIPC_UART_MAX)
  return (EINVAL);

 di->ops = uart_getops(chipc_uart_class);
 di->bas.chan = 0;
 di->bas.bst = uart_bus_space_mem;
 di->bas.bsh = (bus_space_handle_t) BCM_CORE_ADDR(bcm_get_platform(),
     cc_addr, CHIPC_UART(uart));
 di->bas.regshft = 0;
 di->bas.rclk = bcm_get_uart_rclk(bcm_get_platform());
 di->baudrate = baudrate;
 di->databits = 8;
 di->stopbits = 1;
 di->parity = UART_PARITY_NONE;

 return (0);
}
