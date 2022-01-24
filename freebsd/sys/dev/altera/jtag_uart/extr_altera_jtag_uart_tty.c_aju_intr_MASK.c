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
typedef  int uint32_t ;
struct tty {int dummy; } ;
struct altera_jtag_uart_softc {struct tty* ajus_ttyp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct altera_jtag_uart_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct altera_jtag_uart_softc*) ; 
 int ALTERA_JTAG_UART_CONTROL_RI ; 
 int ALTERA_JTAG_UART_CONTROL_WI ; 
 int FUNC2 (struct altera_jtag_uart_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct altera_jtag_uart_softc*,struct tty*) ; 
 int /*<<< orphan*/  FUNC4 (struct altera_jtag_uart_softc*,struct tty*) ; 
 int /*<<< orphan*/  aju_intr_read_count ; 
 int /*<<< orphan*/  aju_intr_write_count ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct tty*) ; 
 int /*<<< orphan*/  FUNC7 (struct tty*) ; 

__attribute__((used)) static void
FUNC8(void *arg)
{
	struct altera_jtag_uart_softc *sc = arg;
	struct tty *tp = sc->ajus_ttyp;
	uint32_t v;

	FUNC6(tp);
	FUNC0(sc);
	v = FUNC2(sc);
	if (v & ALTERA_JTAG_UART_CONTROL_RI) {
		FUNC5(&aju_intr_read_count, 1);
		FUNC3(sc, tp);
	}
	if (v & ALTERA_JTAG_UART_CONTROL_WI) {
		FUNC5(&aju_intr_write_count, 1);
		FUNC4(sc, tp);
	}
	FUNC1(sc);
	FUNC7(tp);
}