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
struct TYPE_2__ {int state; int rate; int cap; int volt; } ;
struct acpi_smbat_softc {TYPE_1__ bst; int /*<<< orphan*/  bst_lastupdated; } ;
struct acpi_bst {int dummy; } ;
typedef  int int16_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ACPI_BATT_STAT_CHARGING ; 
 int ACPI_BATT_STAT_CRITICAL ; 
 int ACPI_BATT_STAT_DISCHARG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int /*<<< orphan*/  SMBATT_ADDRESS ; 
 int SMBATT_BM_CAPACITY_MODE ; 
 int SMBATT_BS_DISCHARGING ; 
 int SMBATT_BS_REMAINING_CAPACITY_ALARM ; 
 int /*<<< orphan*/  SMBATT_CMD_BATTERY_MODE ; 
 int /*<<< orphan*/  SMBATT_CMD_BATTERY_STATUS ; 
 int /*<<< orphan*/  SMBATT_CMD_CURRENT ; 
 int /*<<< orphan*/  SMBATT_CMD_REMAINING_CAPACITY ; 
 int /*<<< orphan*/  SMBATT_CMD_VOLTAGE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct acpi_smbat_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct acpi_smbat_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_bst*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  smbat ; 

__attribute__((used)) static int
FUNC7(device_t dev, struct acpi_bst *bst)
{
	struct acpi_smbat_softc *sc;
	int error;
	uint32_t factor;
	int16_t val;
	uint8_t	addr;

	FUNC0(smbat);

	addr = SMBATT_ADDRESS;
	error = ENXIO;
	sc = FUNC5(dev);

	if (!FUNC2(&sc->bst_lastupdated)) {
		error = 0;
		goto out;
	}

	if (FUNC4(sc, addr, SMBATT_CMD_BATTERY_MODE, &val))
		goto out;
	if (val & SMBATT_BM_CAPACITY_MODE)
		factor = 10;
	else
		factor = 1;

	/* get battery status */
	if (FUNC4(sc, addr, SMBATT_CMD_BATTERY_STATUS, &val))
		goto out;

	sc->bst.state = 0;
	if (val & SMBATT_BS_DISCHARGING)
		sc->bst.state |= ACPI_BATT_STAT_DISCHARG;

	if (val & SMBATT_BS_REMAINING_CAPACITY_ALARM)
		sc->bst.state |= ACPI_BATT_STAT_CRITICAL;

	/*
	 * If the rate is negative, it is discharging.  Otherwise,
	 * it is charging.
	 */
	if (FUNC4(sc, addr, SMBATT_CMD_CURRENT, &val))
		goto out;

	if (val > 0) {
		sc->bst.rate = val * factor;
		sc->bst.state &= ~SMBATT_BS_DISCHARGING;
		sc->bst.state |= ACPI_BATT_STAT_CHARGING;
	} else if (val < 0)
		sc->bst.rate = (-val) * factor;
	else
		sc->bst.rate = 0;

	if (FUNC4(sc, addr, SMBATT_CMD_REMAINING_CAPACITY, &val))
		goto out;
	sc->bst.cap = val * factor;

	if (FUNC4(sc, addr, SMBATT_CMD_VOLTAGE, &val))
		goto out;
	sc->bst.volt = val;

	FUNC3(&sc->bst_lastupdated);
	error = 0;

out:
	if (error == 0)
		FUNC6(bst, &sc->bst, sizeof(sc->bst));
	FUNC1(smbat);
	return (error);
}