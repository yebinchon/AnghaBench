#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct TYPE_2__ {int /*<<< orphan*/  rclk; scalar_t__ regshft; scalar_t__ bsh; int /*<<< orphan*/  bst; scalar_t__ chan; } ;
struct uart_devinfo {int baudrate; int databits; int stopbits; int /*<<< orphan*/  parity; TYPE_1__ bas; int /*<<< orphan*/  ops; } ;
typedef  scalar_t__ bus_space_handle_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ CHIPC_UART_MAX ; 
 int EINVAL ; 
 int /*<<< orphan*/  UART_PARITY_NONE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cc_addr ; 
 int /*<<< orphan*/  chipc_uart_class ; 
 int /*<<< orphan*/  uart_bus_space_mem ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct uart_devinfo *di, u_int uart, int baudrate)
{
	if (uart >= CHIPC_UART_MAX)
		return (EINVAL);

	di->ops = FUNC4(chipc_uart_class);
	di->bas.chan = 0;
	di->bas.bst = uart_bus_space_mem;
	di->bas.bsh = (bus_space_handle_t) FUNC0(FUNC2(),
	    cc_addr, FUNC1(uart));
	di->bas.regshft = 0;
	di->bas.rclk = FUNC3(FUNC2());
	di->baudrate = baudrate;
	di->databits = 8;
	di->stopbits = 1;
	di->parity = UART_PARITY_NONE;

	return (0);
}