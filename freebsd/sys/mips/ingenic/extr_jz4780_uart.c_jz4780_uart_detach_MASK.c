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
struct jz4780_uart_softc {int /*<<< orphan*/ * clk_baud; int /*<<< orphan*/ * clk_mod; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct jz4780_uart_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct jz4780_uart_softc *sc;
	int rv;

	rv = FUNC2(dev);
	if (rv != 0)
		return (rv);

	sc = FUNC1(dev);
	if (sc->clk_mod != NULL) {
		FUNC0(sc->clk_mod);
	}
	if (sc->clk_baud != NULL) {
		FUNC0(sc->clk_baud);
	}
	return (0);
}