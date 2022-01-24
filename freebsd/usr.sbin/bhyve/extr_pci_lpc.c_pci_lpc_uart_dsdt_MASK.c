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
struct lpc_uart_softc {int /*<<< orphan*/  irq; int /*<<< orphan*/  iobase; int /*<<< orphan*/  enabled; } ;

/* Variables and functions */
 int LPC_UART_NUM ; 
 int /*<<< orphan*/  UART_IO_BAR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ * lpc_uart_names ; 
 struct lpc_uart_softc* lpc_uart_softc ; 

__attribute__((used)) static void
FUNC5(void)
{
	struct lpc_uart_softc *sc;
	int unit;

	for (unit = 0; unit < LPC_UART_NUM; unit++) {
		sc = &lpc_uart_softc[unit];
		if (!sc->enabled)
			continue;
		FUNC3("");
		FUNC3("Device (%s)", lpc_uart_names[unit]);
		FUNC3("{");
		FUNC3("  Name (_HID, EisaId (\"PNP0501\"))");
		FUNC3("  Name (_UID, %d)", unit + 1);
		FUNC3("  Name (_CRS, ResourceTemplate ()");
		FUNC3("  {");
		FUNC2(2);
		FUNC0(sc->iobase, UART_IO_BAR_SIZE);
		FUNC1(sc->irq);
		FUNC4(2);
		FUNC3("  })");
		FUNC3("}");
	}
}