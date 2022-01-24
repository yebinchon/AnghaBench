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
struct TYPE_2__ {int regshft; int chan; char rclk; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; } ;
struct uart_devinfo {char baudrate; int databits; int stopbits; int /*<<< orphan*/  parity; TYPE_1__ bas; int /*<<< orphan*/  ops; } ;
struct uart_class {int dummy; } ;
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (int,char*,char*,int) ; 
#define  UART_DEV_CONSOLE 129 
#define  UART_DEV_DBGPORT 128 
 int /*<<< orphan*/  UART_PARITY_NONE ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 scalar_t__ FUNC4 (int,char*) ; 
 int FUNC5 (int,int*,char*) ; 
 int FUNC6 (int,int*,char*,char*) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct uart_class*) ; 
 struct uart_class uart_ns8250_class ; 
 struct uart_class uart_z8530_class ; 

int
FUNC9(int devtype, struct uart_devinfo *di)
{
	char buf[64];
	struct uart_class *class;
	phandle_t input, opts, chosen;
	int error;

	opts = FUNC1("/options");
	chosen = FUNC1("/chosen");
	switch (devtype) {
	case UART_DEV_CONSOLE:
		error = ENXIO;
		if (chosen != -1 && error != 0)
			error = FUNC6(chosen, &input,
			    "stdout-path", NULL);
		if (chosen != -1 && error != 0)
			error = FUNC6(chosen, &input,
			    "linux,stdout-path", NULL);
		if (chosen != -1 && error != 0)
			error = FUNC5(chosen, &input,
			    "stdout");
		if (chosen != -1 && error != 0)
			error = FUNC6(chosen, &input,
			    "stdin-path", NULL);
		if (chosen != -1 && error != 0)
			error = FUNC5(chosen, &input,
			    "stdin");
		if (opts != -1 && error != 0)
			error = FUNC6(opts, &input,
			    "input-device", "output-device");
		if (opts != -1 && error != 0)
			error = FUNC6(opts, &input,
			    "input-device-1", "output-device-1");
		if (error != 0) {
			input = FUNC1("serial0"); /* Last ditch */
			if (input == -1)
				error = (ENXIO);
		}

		if (error != 0)
			return (error);
		break;
	case UART_DEV_DBGPORT:
		if (!FUNC3("hw.uart.dbgport", buf, sizeof(buf)))
			return (ENXIO);
		input = FUNC1(buf);
		if (input == -1)
			return (ENXIO);
		break;
	default:
		return (EINVAL);
	}

	if (FUNC2(input, "device_type", buf, sizeof(buf)) == -1)
		return (ENXIO);
	if (FUNC7(buf, "serial") != 0)
		return (ENXIO);

	if (FUNC4(input, "chrp,es")) {
		class = &uart_z8530_class;
		di->bas.regshft = 4;
		di->bas.chan = 1;
	} else if (FUNC4(input,"ns16550") ||
	    FUNC4(input,"ns8250")) {
		class = &uart_ns8250_class;
		di->bas.regshft = 0;
		di->bas.chan = 0;
	} else
		return (ENXIO);

	if (class == NULL)
		return (ENXIO);

	error = FUNC0(input, 0, &di->bas.bst, &di->bas.bsh, NULL);
	if (error)
		return (error);

	di->ops = FUNC8(class);

	if (FUNC2(input, "clock-frequency", &di->bas.rclk, 
	    sizeof(di->bas.rclk)) == -1)
		di->bas.rclk = 230400;
	if (FUNC2(input, "current-speed", &di->baudrate, 
	    sizeof(di->baudrate)) == -1)
		di->baudrate = 0;
	FUNC2(input, "reg-shift", &di->bas.regshft,
	    sizeof(di->bas.regshft));

	di->databits = 8;
	di->stopbits = 1;
	di->parity = UART_PARITY_NONE;
	return (0);
}