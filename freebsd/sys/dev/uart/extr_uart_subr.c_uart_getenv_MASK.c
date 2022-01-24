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
struct TYPE_2__ {int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; void* rclk; void* regshft; void* chan; void* busy_detect; } ;
struct uart_devinfo {int baudrate; int databits; int stopbits; TYPE_1__ bas; int /*<<< orphan*/  ops; int /*<<< orphan*/  parity; } ;
struct uart_class {int dummy; } ;
typedef  unsigned int bus_addr_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
#define  UART_DEV_CONSOLE 140 
#define  UART_DEV_DBGPORT 139 
 int /*<<< orphan*/  UART_PARITY_NONE ; 
#define  UART_TAG_BD 138 
#define  UART_TAG_BR 137 
#define  UART_TAG_CH 136 
#define  UART_TAG_DB 135 
#define  UART_TAG_DT 134 
#define  UART_TAG_IO 133 
#define  UART_TAG_MM 132 
#define  UART_TAG_PA 131 
#define  UART_TAG_RS 130 
#define  UART_TAG_SB 129 
#define  UART_TAG_XO 128 
 int FUNC0 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  uart_bus_space_io ; 
 int /*<<< orphan*/  uart_bus_space_mem ; 
 int /*<<< orphan*/  FUNC3 (struct uart_class*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_class*) ; 
 unsigned int FUNC5 (char const**) ; 
 struct uart_class* FUNC6 (struct uart_class*,char const**) ; 
 void* FUNC7 (char const**) ; 
 int /*<<< orphan*/  FUNC8 (char const**) ; 
 int FUNC9 (char const**) ; 

int
FUNC10(int devtype, struct uart_devinfo *di, struct uart_class *class)
{
	const char *spec;
	char *cp;
	bus_addr_t addr = ~0U;
	int error;

	/*
	 * All uart_class references are weak. Make sure the default
	 * device class has been compiled-in.
	 */
	if (class == NULL)
		return (ENXIO);

	/*
	 * Check the environment variables "hw.uart.console" and
	 * "hw.uart.dbgport". These variables, when present, specify
	 * which UART port is to be used as serial console or debug
	 * port (resp).
	 */
	switch (devtype) {
	case UART_DEV_CONSOLE:
		cp = FUNC2("hw.uart.console");
		break;
	case UART_DEV_DBGPORT:
		cp = FUNC2("hw.uart.dbgport");
		break;
	default:
		cp = NULL;
		break;
	}

	if (cp == NULL)
		return (ENXIO);

	/* Set defaults. */
	di->bas.chan = 0;
	di->bas.regshft = 0;
	di->bas.rclk = 0;
	di->baudrate = 0;
	di->databits = 8;
	di->stopbits = 1;
	di->parity = UART_PARITY_NONE;

	/* Parse the attributes. */
	spec = cp;
	for (;;) {
		switch (FUNC9(&spec)) {
		case UART_TAG_BD:
			di->bas.busy_detect = FUNC7(&spec);
			break;
		case UART_TAG_BR:
			di->baudrate = FUNC7(&spec);
			break;
		case UART_TAG_CH:
			di->bas.chan = FUNC7(&spec);
			break;
		case UART_TAG_DB:
			di->databits = FUNC7(&spec);
			break;
		case UART_TAG_DT:
			class = FUNC6(class, &spec);
			break;
		case UART_TAG_IO:
			di->bas.bst = uart_bus_space_io;
			addr = FUNC5(&spec);
			break;
		case UART_TAG_MM:
			di->bas.bst = uart_bus_space_mem;
			addr = FUNC5(&spec);
			break;
		case UART_TAG_PA:
			di->parity = FUNC8(&spec);
			break;
		case UART_TAG_RS:
			di->bas.regshft = FUNC7(&spec);
			break;
		case UART_TAG_SB:
			di->stopbits = FUNC7(&spec);
			break;
		case UART_TAG_XO:
			di->bas.rclk = FUNC7(&spec);
			break;
		default:
			FUNC1(cp);
			return (EINVAL);
		}
		if (*spec == '\0')
			break;
		if (*spec != ',') {
			FUNC1(cp);
			return (EINVAL);
		}
		spec++;
	}
	FUNC1(cp);

	/*
	 * If we still have an invalid address, the specification must be
	 * missing an I/O port or memory address. We don't like that.
	 */
	if (addr == ~0U)
		return (EINVAL);

	/*
	 * Accept only the well-known baudrates. Any invalid baudrate
	 * is silently replaced with a 0-valued baudrate. The 0 baudrate
	 * has special meaning. It means that we're not supposed to
	 * program the baudrate and simply communicate with whatever
	 * speed the hardware is currently programmed for.
	 */
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

	/* Set the ops and create a bus space handle. */
	di->ops = FUNC3(class);
	error = FUNC0(di->bas.bst, addr, FUNC4(class), 0,
	    &di->bas.bsh);
	return (error);
}