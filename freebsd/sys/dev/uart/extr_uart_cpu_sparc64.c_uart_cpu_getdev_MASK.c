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
struct TYPE_2__ {int regshft; int chan; int /*<<< orphan*/ * bst; int /*<<< orphan*/  bsh; scalar_t__ rclk; } ;
struct uart_devinfo {int baudrate; int databits; int stopbits; void* parity; TYPE_1__ bas; int /*<<< orphan*/  ops; } ;
struct uart_class {int dummy; } ;
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  dev ;
typedef  int /*<<< orphan*/  compat ;
typedef  int bus_addr_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (int,char*,char*,int) ; 
#define  UART_DEV_CONSOLE 130 
#define  UART_DEV_DBGPORT 129 
#define  UART_DEV_KEYBOARD 128 
 void* UART_PARITY_EVEN ; 
 void* UART_PARITY_NONE ; 
 void* UART_PARITY_ODD ; 
 int /*<<< orphan*/ * bst_store ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,char*,int*,int*,char*,int*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 void* FUNC7 (char*) ; 
 int FUNC8 (int,char*,int) ; 
 int FUNC9 (char*,int) ; 
 int FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct uart_class*) ; 
 int FUNC12 (struct uart_class*) ; 
 struct uart_class uart_ns8250_class ; 
 struct uart_class uart_sab82532_class ; 
 struct uart_class uart_sbbc_class ; 
 struct uart_class uart_z8530_class ; 

int
FUNC13(int devtype, struct uart_devinfo *di)
{
	char buf[32], compat[32], dev[64];
	struct uart_class *class;
	phandle_t input, options;
	bus_addr_t addr;
	int baud, bits, error, range, space, stop;
	char flag, par;

	if ((options = FUNC1("/options")) == -1)
		return (ENXIO);
	switch (devtype) {
	case UART_DEV_CONSOLE:
		input = FUNC8(options, dev, sizeof(dev));
		break;
	case UART_DEV_DBGPORT:
		input = FUNC9(dev, sizeof(dev));
		break;
	case UART_DEV_KEYBOARD:
		input = FUNC10(dev, sizeof(dev));
		break;
	default:
		input = -1;
		break;
	}
	if (input == -1)
		return (ENXIO);
	error = FUNC0(input, 0, &space, &addr);
	if (error)
		return (error);

	/* Get the device class. */
	if (FUNC2(input, "name", buf, sizeof(buf)) == -1)
		return (ENXIO);
	if (FUNC2(input, "compatible", compat, sizeof(compat)) == -1)
		compat[0] = '\0';
	di->bas.regshft = 0;
	di->bas.rclk = 0;
	class = NULL;
	if (!FUNC6(buf, "se") || !FUNC6(buf, "FJSV,se") ||
	    !FUNC6(compat, "sab82532")) {
		class = &uart_sab82532_class;
		/* SAB82532 are only known to be used for TTYs. */
		if ((di->bas.chan = FUNC7(dev)) == 0)
			return (ENXIO);
		addr += FUNC12(class) * (di->bas.chan - 1);
	} else if (!FUNC6(buf, "zs")) {
		class = &uart_z8530_class;
		if ((di->bas.chan = FUNC7(dev)) == 0) {
			/*
			 * There's no way to determine from OF which
			 * channel has the keyboard. Should always be
			 * on channel 1 however.
			 */
			if (devtype == UART_DEV_KEYBOARD)
				di->bas.chan = 1;
			else
				return (ENXIO);
		}
		di->bas.regshft = 1;
		range = FUNC12(class) << di->bas.regshft;
		addr += range - range * (di->bas.chan - 1);
	} else if (!FUNC6(buf, "lom-console") || !FUNC6(buf, "su") ||
	    !FUNC6(buf, "su_pnp") || !FUNC6(compat, "rsc-console") ||
	    !FUNC6(compat, "su") || !FUNC6(compat, "su16550") ||
	    !FUNC6(compat, "su16552")) {
		class = &uart_ns8250_class;
		di->bas.chan = 0;
	} else if (!FUNC6(compat, "sgsbbc")) {
		class = &uart_sbbc_class;
		di->bas.chan = 0;
	}
	if (class == NULL)
		return (ENXIO);

	/* Fill in the device info. */
	di->ops = FUNC11(class);
	di->bas.bst = &bst_store[devtype];
	di->bas.bsh = FUNC4(space, addr, di->bas.bst);

	/* Get the line settings. */
	if (devtype == UART_DEV_KEYBOARD)
		di->baudrate = 1200;
	else if (!FUNC6(compat, "rsc-console"))
		di->baudrate = 115200;
	else
		di->baudrate = 9600;
	di->databits = 8;
	di->stopbits = 1;
	di->parity = UART_PARITY_NONE;
	FUNC3(buf, sizeof(buf), "%s-mode", dev);
	if (FUNC2(options, buf, buf, sizeof(buf)) == -1 &&
	    FUNC2(input, "ssp-console-modes", buf, sizeof(buf)) == -1)
		return (0);
	if (FUNC5(buf, "%d,%d,%c,%d,%c", &baud, &bits, &par, &stop, &flag)
	    != 5)
		return (0);
	di->baudrate = baud;
	di->databits = bits;
	di->stopbits = stop;
	di->parity = (par == 'n') ? UART_PARITY_NONE :
	    (par == 'o') ? UART_PARITY_ODD : UART_PARITY_EVEN;
	return (0);
}