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
struct acpi_smbat_softc {int sb_base_addr; int /*<<< orphan*/  bst_lastupdated; int /*<<< orphan*/  bif_lastupdated; int /*<<< orphan*/ * ec_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct acpi_smbat_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct acpi_smbat_softc *sc;
	uint32_t base;

	sc = FUNC6(dev);
	if (FUNC0(FUNC1(FUNC3(dev), "_EC", &base))) {
		FUNC7(dev, "cannot get EC base address\n");
		return (ENXIO);
	}
	sc->sb_base_addr = (base >> 8) & 0xff;

	/* XXX Only works with one EC, but nearly all systems only have one. */
	sc->ec_dev = FUNC5(FUNC4("acpi_ec"), 0);
	if (sc->ec_dev == NULL) {
		FUNC7(dev, "cannot find EC device\n");
		return (ENXIO);
	}

	FUNC8(&sc->bif_lastupdated);
	FUNC8(&sc->bst_lastupdated);

	if (FUNC2(dev) != 0) {
		FUNC7(dev, "cannot register battery\n");
		return (ENXIO);
	}
	return (0);
}