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
struct uart_softc {int /*<<< orphan*/ * sc_class; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct uart_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  isa_ns8250_ids ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uart_ns8250_class ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct uart_softc *sc;
	device_t parent;

	parent = FUNC1(dev);
	sc = FUNC2(dev);

	/* Check PnP IDs */
	if (FUNC0(parent, dev, isa_ns8250_ids) == ENXIO)
		return (ENXIO);

	/* Probe PnP _and_ non-PnP ns8250 here. */
	sc->sc_class = &uart_ns8250_class;

	return (FUNC3(dev, 0, 0, 0, 0, 0, 0));
}