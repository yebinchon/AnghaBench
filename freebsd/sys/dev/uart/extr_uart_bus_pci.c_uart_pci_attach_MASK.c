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
struct uart_softc {int sc_irid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct uart_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct uart_softc *sc;
	int count;

	sc = FUNC0(dev);

	/*
	 * Use MSI in preference to legacy IRQ if available.
	 * Whilst some PCIe UARTs support >1 MSI vector, use only the first.
	 */
	if (FUNC3(dev) > 0) {
		count = 1;
		if (FUNC2(dev, &count) == 0) {
			sc->sc_irid = 1;
			FUNC1(dev, "Using %d MSI message\n", count);
		}
	}

	return (FUNC4(dev));
}