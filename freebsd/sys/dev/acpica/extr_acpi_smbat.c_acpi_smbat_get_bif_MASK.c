#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct TYPE_2__ {int dcap; int lfcap; int btech; int dvol; int wcap; int lcap; int gra1; int gra2; int /*<<< orphan*/  oeminfo; int /*<<< orphan*/  type; int /*<<< orphan*/  serial; int /*<<< orphan*/  model; int /*<<< orphan*/  units; } ;
struct acpi_smbat_softc {TYPE_1__ bif; int /*<<< orphan*/  bif_lastupdated; } ;
struct acpi_bif {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_BIF_UNITS_MA ; 
 int /*<<< orphan*/  ACPI_BIF_UNITS_MW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int /*<<< orphan*/  SMBATT_ADDRESS ; 
 int SMBATT_BM_CAPACITY_MODE ; 
 int /*<<< orphan*/  SMBATT_CMD_BATTERY_MODE ; 
 int /*<<< orphan*/  SMBATT_CMD_DESIGN_CAPACITY ; 
 int /*<<< orphan*/  SMBATT_CMD_DESIGN_VOLTAGE ; 
 int /*<<< orphan*/  SMBATT_CMD_DEVICE_CHEMISTRY ; 
 int /*<<< orphan*/  SMBATT_CMD_DEVICE_NAME ; 
 int /*<<< orphan*/  SMBATT_CMD_FULL_CHARGE_CAPACITY ; 
 int /*<<< orphan*/  SMBATT_CMD_MANUFACTURER_DATA ; 
 int /*<<< orphan*/  SMBATT_CMD_SERIAL_NUMBER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct acpi_smbat_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC5 (struct acpi_smbat_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct acpi_smbat_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct acpi_bif*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  smbat ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*,int) ; 

__attribute__((used)) static int
FUNC9(device_t dev, struct acpi_bif *bif)
{
	struct acpi_smbat_softc *sc;
	int error;
	uint32_t factor;
	uint16_t val;
	uint8_t addr;

	FUNC0(smbat);

	addr = SMBATT_ADDRESS;
	error = ENXIO;
	sc = FUNC6(dev);

	if (!FUNC2(&sc->bif_lastupdated)) {
		error = 0;
		goto out;
	}

	if (FUNC4(sc, addr, SMBATT_CMD_BATTERY_MODE, &val))
		goto out;
	if (val & SMBATT_BM_CAPACITY_MODE) {
		factor = 10;
		sc->bif.units = ACPI_BIF_UNITS_MW;
	} else {
		factor = 1;
		sc->bif.units = ACPI_BIF_UNITS_MA;
	}

	if (FUNC4(sc, addr, SMBATT_CMD_DESIGN_CAPACITY, &val))
		goto out;
	sc->bif.dcap = val * factor;

	if (FUNC4(sc, addr, SMBATT_CMD_FULL_CHARGE_CAPACITY, &val))
		goto out;
	sc->bif.lfcap = val * factor;
	sc->bif.btech = 1;		/* secondary (rechargeable) */

	if (FUNC4(sc, addr, SMBATT_CMD_DESIGN_VOLTAGE, &val))
		goto out;
	sc->bif.dvol = val;

	sc->bif.wcap = sc->bif.dcap / 10;
	sc->bif.lcap = sc->bif.dcap / 10;

	sc->bif.gra1 = factor;	/* not supported */
	sc->bif.gra2 = factor;	/* not supported */

	if (FUNC5(sc, addr, SMBATT_CMD_DEVICE_NAME,
	    sc->bif.model, sizeof(sc->bif.model)))
		goto out;

	if (FUNC4(sc, addr, SMBATT_CMD_SERIAL_NUMBER, &val))
		goto out;
	FUNC8(sc->bif.serial, sizeof(sc->bif.serial), "0x%04x", val);

	if (FUNC5(sc, addr, SMBATT_CMD_DEVICE_CHEMISTRY,
	    sc->bif.type, sizeof(sc->bif.type)))
		goto out;

	if (FUNC5(sc, addr, SMBATT_CMD_MANUFACTURER_DATA,
	    sc->bif.oeminfo, sizeof(sc->bif.oeminfo)))
		goto out;

	/* XXX check if device was replugged during read? */

	FUNC3(&sc->bif_lastupdated);
	error = 0;

out:
	if (error == 0)
		FUNC7(bif, &sc->bif, sizeof(sc->bif));
	FUNC1(smbat);
	return (error);
}