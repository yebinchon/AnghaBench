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
typedef  int /*<<< orphan*/  uint32_t ;
struct altera_jtag_uart_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct altera_jtag_uart_softc*) ; 
 int /*<<< orphan*/  ALTERA_JTAG_UART_CONTROL_RE ; 
 int /*<<< orphan*/  FUNC1 (struct altera_jtag_uart_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct altera_jtag_uart_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aju_intr_readable_enabled ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC4(struct altera_jtag_uart_softc *sc)
{
	uint32_t v;

	FUNC0(sc);

	FUNC3(&aju_intr_readable_enabled, 1);
	v = FUNC1(sc);
	v |= ALTERA_JTAG_UART_CONTROL_RE;
	FUNC2(sc, v);
}