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
struct gpiobus_softc {int dummy; } ;
struct gpiobus_ivar {int /*<<< orphan*/  rl; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 
 struct gpiobus_ivar* FUNC1 (int /*<<< orphan*/ ) ; 
 struct gpiobus_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct gpiobus_ivar*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct gpiobus_softc*,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC8 (struct gpiobus_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (char const*,int,char*,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (char const*,int,char*,char const**) ; 

__attribute__((used)) static void
FUNC12(device_t bus, const char *dname, int dunit)
{
	struct gpiobus_softc *sc = FUNC2(bus);
	struct gpiobus_ivar *devi;
	device_t child;
	const char *pins;
	int irq, pinmask;

	child = FUNC0(bus, 0, dname, dunit);
	devi = FUNC1(child);
	if (FUNC9(dname, dunit, "pins", &pinmask) == 0) {
		if (FUNC8(sc, child, pinmask)) {
			FUNC10(&devi->rl);
			FUNC6(devi, M_DEVBUF);
			FUNC4(bus, child);
			return;
		}
	}
	else if (FUNC11(dname, dunit, "pin_list", &pins) == 0) {
		if (FUNC7(sc, child, pins)) {
			FUNC10(&devi->rl);
			FUNC6(devi, M_DEVBUF);
			FUNC4(bus, child);
			return;
		}
	}
	if (FUNC9(dname, dunit, "irq", &irq) == 0) {
		if (FUNC3(child, SYS_RES_IRQ, 0, irq, 1) != 0)
			FUNC5(bus,
			    "warning: bus_set_resource() failed\n");
	}
}