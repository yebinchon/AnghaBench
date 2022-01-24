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
typedef  size_t uint16_t ;
struct smc_softc {scalar_t__ smc_usemem; } ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BAR ; 
 size_t FUNC0 (size_t) ; 
 int /*<<< orphan*/  BSR ; 
 size_t BSR_IDENTIFY ; 
 size_t BSR_IDENTIFY_MASK ; 
 int ENXIO ; 
 int /*<<< orphan*/  REV ; 
 size_t REV_CHIP_MASK ; 
 size_t REV_CHIP_SHIFT ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int SYS_RES_IOPORT ; 
 int SYS_RES_MEMORY ; 
 scalar_t__ bootverbose ; 
 struct resource* FUNC1 (int /*<<< orphan*/ ,int,int*,int,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (struct resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC4 (struct resource*,int /*<<< orphan*/ ,int) ; 
 struct smc_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t FUNC8 (struct resource*) ; 
 int /*<<< orphan*/ ** smc_chip_ids ; 

int
FUNC9(device_t dev)
{
	int			rid, type, error;
	uint16_t		val;
	struct smc_softc	*sc;
	struct resource		*reg;

	sc = FUNC5(dev);
	rid = 0;
	type = SYS_RES_IOPORT;
	error = 0;

	if (sc->smc_usemem)
		type = SYS_RES_MEMORY;

	reg = FUNC1(dev, type, &rid, 16, RF_ACTIVE);
	if (reg == NULL) {
		if (bootverbose)
			FUNC6(dev,
			    "could not allocate I/O resource for probe\n");
		return (ENXIO);
	}

	/* Check for the identification value in the BSR. */
	val = FUNC2(reg, BSR);
	if ((val & BSR_IDENTIFY_MASK) != BSR_IDENTIFY) {
		if (bootverbose)
			FUNC6(dev, "identification value not in BSR\n");
		error = ENXIO;
		goto done;
	}

	/*
	 * Try switching banks and make sure we still get the identification
	 * value.
	 */
	FUNC4(reg, BSR, 0);
	val = FUNC2(reg, BSR);
	if ((val & BSR_IDENTIFY_MASK) != BSR_IDENTIFY) {
		if (bootverbose)
			FUNC6(dev,
			    "identification value not in BSR after write\n");
		error = ENXIO;
		goto done;
	}

#if 0
	/* Check the BAR. */
	bus_write_2(reg, BSR, 1);
	val = bus_read_2(reg, BAR);
	val = BAR_ADDRESS(val);
	if (rman_get_start(reg) != val) {
		if (bootverbose)
			device_printf(dev, "BAR address %x does not match "
			    "I/O resource address %lx\n", val,
			    rman_get_start(reg));
		error = ENXIO;
		goto done;
	}
#endif

	/* Compare REV against known chip revisions. */
	FUNC4(reg, BSR, 3);
	val = FUNC2(reg, REV);
	val = (val & REV_CHIP_MASK) >> REV_CHIP_SHIFT;
	if (smc_chip_ids[val] == NULL) {
		if (bootverbose)
			FUNC6(dev, "Unknown chip revision: %d\n", val);
		error = ENXIO;
		goto done;
	}

	FUNC7(dev, smc_chip_ids[val]);

done:
	FUNC3(dev, type, rid, reg);
	return (error);
}