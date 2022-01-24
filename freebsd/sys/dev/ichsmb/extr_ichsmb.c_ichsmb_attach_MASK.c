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
typedef  TYPE_1__* sc_p ;
typedef  int /*<<< orphan*/  ich_func_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  irq_handle; int /*<<< orphan*/  irq_res; int /*<<< orphan*/  io_res; int /*<<< orphan*/ * smb; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_SMBUS ; 
 int ENXIO ; 
 int /*<<< orphan*/  ICH_HST_STA ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  MTX_DEF ; 
 scalar_t__ bus_generic_attach ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__* const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ichsmb_device_intr ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int
FUNC9(device_t dev)
{
	const sc_p sc = FUNC5(dev);
	int error;

	/* Create mutex */
	FUNC8(&sc->mutex, FUNC4(dev), "ichsmb", MTX_DEF);

	/* Add child: an instance of the "smbus" device */
	if ((sc->smb = FUNC3(dev, DRIVER_SMBUS, -1)) == NULL) {
		FUNC6(dev, "no \"%s\" child found\n", DRIVER_SMBUS);
		error = ENXIO;
		goto fail;
	}

	/* Clear interrupt conditions */
	FUNC1(sc->io_res, ICH_HST_STA, 0xff);

	/* Set up interrupt handler */
	error = FUNC0(dev, sc->irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
	    NULL, ichsmb_device_intr, sc, &sc->irq_handle);
	if (error != 0) {
		FUNC6(dev, "can't setup irq\n");
		goto fail;
	}

	/* Probe and attach the smbus when interrupts are available */
	FUNC2((ich_func_t)bus_generic_attach, dev);

	return (0);

fail:
	FUNC7(&sc->mutex);
	return (error);
}