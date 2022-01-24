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
struct TYPE_2__ {int regshft; scalar_t__ rclk; int /*<<< orphan*/  bsh; int /*<<< orphan*/ * bst; scalar_t__ chan; } ;
struct uart_devinfo {int baudrate; int databits; int stopbits; int /*<<< orphan*/  parity; TYPE_1__ bas; int /*<<< orphan*/  ops; } ;
struct uart_class {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int /*<<< orphan*/  UART_PARITY_NONE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  octeon_uart_tag ; 
 int /*<<< orphan*/ * uart_bus_space_io ; 
 int /*<<< orphan*/ * uart_bus_space_mem ; 
 scalar_t__ FUNC2 (int,struct uart_devinfo*,struct uart_class*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_class*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_class*) ; 
 struct uart_class uart_oct16550_class ; 

int
FUNC5(int devtype, struct uart_devinfo *di)
{
	struct uart_class *class = &uart_oct16550_class;

	/*
	 * These fields need to be setup corretly for uart_getenv to
	 * work in all cases.
	 */
	uart_bus_space_io = NULL;		/* No io map for this device */
	uart_bus_space_mem = &octeon_uart_tag;
	di->bas.bst = uart_bus_space_mem;

	/*
	 * If env specification for UART exists it takes precedence:
	 * hw.uart.console="mm:0xf1012000" or similar
	 */
	if (FUNC2(devtype, di, class) == 0)
		return (0);

	/*
	 * Fallback to UART0 for console.
	 */
	di->ops = FUNC3(class);
	di->bas.chan = 0;
	/* XXX */
	if (FUNC1(di->bas.bst, FUNC0(0),
	    FUNC4(class), 0, &di->bas.bsh) != 0)
		return (ENXIO);
	di->bas.regshft = 3;
	di->bas.rclk = 0;
	di->baudrate = 115200;
	di->databits = 8;
	di->stopbits = 1;
	di->parity = UART_PARITY_NONE;

	return (0);
}