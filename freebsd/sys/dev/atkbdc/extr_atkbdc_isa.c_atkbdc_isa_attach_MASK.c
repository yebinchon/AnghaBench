#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int retry; int /*<<< orphan*/ * irq; int /*<<< orphan*/ * port1; int /*<<< orphan*/ * port0; } ;
typedef  TYPE_1__ atkbdc_softc_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int FUNC0 (int,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	atkbdc_softc_t	*sc;
	int		unit;
	int		error;
	int		rid;

	unit = FUNC7(dev);
	sc = *(atkbdc_softc_t **)FUNC6(dev);
	if (sc == NULL) {
		/*
		 * We have to maintain two copies of the kbdc_softc struct,
		 * as the low-level console needs to have access to the
		 * keyboard controller before kbdc is probed and attached.
		 * kbdc_soft[] contains the default entry for that purpose.
		 * See atkbdc.c. XXX
		 */
		sc = FUNC1(unit);
		if (sc == NULL)
			return ENOMEM;
	}

	rid = 0;
	sc->retry = 5000;
	sc->port0 = FUNC2(dev, SYS_RES_IOPORT, &rid,
					   RF_ACTIVE);
	if (sc->port0 == NULL)
		return ENXIO;
	rid = 1;
	sc->port1 = FUNC2(dev, SYS_RES_IOPORT, &rid,
					   RF_ACTIVE);
	if (sc->port1 == NULL) {
		FUNC5(dev, SYS_RES_IOPORT, 0, sc->port0);
		return ENXIO;
	}

	/*
	 * If the device is not created by the PnP BIOS or ACPI, then
	 * the hint for the IRQ is on the child atkbd device, not the
	 * keyboard controller, so this can fail.
	 */
	rid = 0;
	sc->irq = FUNC2(dev, SYS_RES_IRQ, &rid, RF_ACTIVE);

	error = FUNC0(unit, sc, sc->port0, sc->port1);
	if (error) {
		FUNC5(dev, SYS_RES_IOPORT, 0, sc->port0);
		FUNC5(dev, SYS_RES_IOPORT, 1, sc->port1);
		if (sc->irq != NULL)
			FUNC5(dev, SYS_RES_IRQ, 0, sc->irq);
		return error;
	}
	*(atkbdc_softc_t **)FUNC6(dev) = sc;

	FUNC4(dev);
	FUNC3(dev);

	return 0;
}