#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u_int ;
struct uart_devinfo {int dummy; } ;

/* Variables and functions */
 int CHIPC_UART_BAUDRATE ; 
 scalar_t__ CHIPC_UART_MAX ; 
 int UART_DEV_CONSOLE ; 
 int UART_DEV_DBGPORT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  chipc_uart_class ; 
 int /*<<< orphan*/  mips_bus_space_generic ; 
 scalar_t__ FUNC2 (char*,scalar_t__,char*,int*) ; 
 int /*<<< orphan*/ * uart_bus_space_io ; 
 int /*<<< orphan*/  uart_bus_space_mem ; 
 int FUNC3 (struct uart_devinfo*,scalar_t__,int) ; 
 scalar_t__ FUNC4 (int,struct uart_devinfo*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,struct uart_devinfo*) ; 

int
FUNC6(int devtype, struct uart_devinfo *di)
{
	int			 ivar;

	uart_bus_space_io = NULL;
	uart_bus_space_mem = mips_bus_space_generic;

#ifdef CFE
	/* Check the CFE environment */
	if (uart_getenv_cfe(devtype, di) == 0)
		return (0);
#endif /* CFE */

	/* Check the kernel environment. */
	if (FUNC4(devtype, di, chipc_uart_class) == 0)
		return (0);

	/* Scan the device hints for the first matching device */
	for (u_int i = 0; i < CHIPC_UART_MAX; i++) {
		if (FUNC2("uart", i, "flags", &ivar))
			continue;

		/* Check usability */
		if (devtype == UART_DEV_CONSOLE && !FUNC0(ivar))
			continue;

		if (devtype == UART_DEV_DBGPORT && !FUNC1(ivar))
			continue;

		if (FUNC2("uart", i, "disabled", &ivar) == 0 &&
		    ivar == 0)
			continue;

		/* Found */
		if (FUNC2("uart", i, "baud", &ivar) != 0)
			ivar = CHIPC_UART_BAUDRATE;
		
		return (FUNC3(di, i, ivar));
	}

	/* Default to uart0/115200 */
	return (FUNC3(di, 0, CHIPC_UART_BAUDRATE));
}