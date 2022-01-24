#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct TYPE_3__ {int chip_id; } ;
struct bhnd_pmu_softc {int /*<<< orphan*/  chipc_dev; TYPE_1__ cid; } ;
struct TYPE_4__ {int /*<<< orphan*/  chipstatus; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  BHND_CHIPID_BCM4325 129 
#define  BHND_CHIPID_BCM4329 128 
 int /*<<< orphan*/  FUNC1 (struct bhnd_pmu_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  BHND_PMU_CHIP_CONTROL_ADDR ; 
 int /*<<< orphan*/  BHND_PMU_CHIP_CONTROL_DATA ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bhnd_pmu_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct bhnd_pmu_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BHND_PMU_REG_CONTROL_ADDR ; 
 int /*<<< orphan*/  BHND_PMU_REG_CONTROL_DATA ; 
 int /*<<< orphan*/  FUNC5 (struct bhnd_pmu_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  CHIPC_CST4325_RCAL_VALID ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_2__* cc ; 

void 
FUNC10(struct bhnd_pmu_softc *sc)
{
	uint32_t	chipst;
	uint32_t	val;
	uint8_t		rcal_code;
	bool		bluetooth_rcal;


	bluetooth_rcal = false;

	switch (sc->cid.chip_id) {
	case BHND_CHIPID_BCM4325:
	case BHND_CHIPID_BCM4329:
		/* Kick RCal */
		FUNC5(sc, BHND_PMU_CHIP_CONTROL_ADDR, 1);

		/* Power Down RCAL Block */
		FUNC1(sc, BHND_PMU_CHIP_CONTROL_DATA, ~0x04);

		if (sc->cid.chip_id == BHND_CHIPID_BCM4325) {
			chipst = FUNC0(sc->chipc_dev);
			if (FUNC2(chipst, CHIPC_CST4325_RCAL_VALID))
				bluetooth_rcal = true;
		}

		/* Power Up RCAL block */
		FUNC1(sc, BHND_PMU_CHIP_CONTROL_DATA, 0x04);

		/* Wait for completion */
		for (int i = 0; i < (10 * 1000 * 1000); i++) {
			chipst = FUNC0(sc->chipc_dev);

			if (chipst & 0x08)
				break;

			FUNC6(10);
		}
		FUNC7((chipst & 0x08) != 0, ("rcal completion timeout"));

		if (bluetooth_rcal) {
			rcal_code = 0x6;
		} else {
			/* Drop LSB to convert from 5 bit code to 4 bit code */
			rcal_code = (uint8_t) (chipst >> 5) & 0x0f;
		}

		FUNC8("RCal completed, status 0x%x, code 0x%x\n",
		    FUNC9(&cc->chipstatus), rcal_code);

		/* Write RCal code into pmu_vreg_ctrl[32:29] */
		FUNC5(sc, BHND_PMU_REG_CONTROL_ADDR, 0);
		val = FUNC4(sc, BHND_PMU_REG_CONTROL_DATA);
		val &= ~((uint32_t) 0x07 << 29);
		val |= (uint32_t) (rcal_code & 0x07) << 29;
		FUNC5(sc, BHND_PMU_REG_CONTROL_DATA, val);

		FUNC5(sc, BHND_PMU_REG_CONTROL_ADDR, 1);
		val = FUNC4(sc, BHND_PMU_REG_CONTROL_DATA);
		val &= ~(uint32_t) 0x01;
		val |= (uint32_t) ((rcal_code >> 3) & 0x01);
		FUNC5(sc, BHND_PMU_REG_CONTROL_DATA, val);

		/* Write RCal code into pmu_chip_ctrl[33:30] */
		FUNC5(sc, BHND_PMU_CHIP_CONTROL_ADDR, 0);
		val = FUNC4(sc, BHND_PMU_CHIP_CONTROL_DATA);
		val &= ~((uint32_t) 0x03 << 30);
		val |= (uint32_t) (rcal_code & 0x03) << 30;
		FUNC5(sc, BHND_PMU_CHIP_CONTROL_DATA, val);

		FUNC5(sc, BHND_PMU_CHIP_CONTROL_ADDR, 1);
		val = FUNC4(sc, BHND_PMU_CHIP_CONTROL_DATA);
		val &= ~(uint32_t) 0x03;
		val |= (uint32_t) ((rcal_code >> 2) & 0x03);
		FUNC5(sc, BHND_PMU_CHIP_CONTROL_DATA, val);

		/* Set override in pmu_chip_ctrl[29] */
		FUNC5(sc, BHND_PMU_CHIP_CONTROL_ADDR, 0);
		FUNC3(sc, BHND_PMU_CHIP_CONTROL_DATA, (0x01 << 29));

		/* Power off RCal block */
		FUNC5(sc, BHND_PMU_CHIP_CONTROL_ADDR, 1);
		FUNC1(sc, BHND_PMU_CHIP_CONTROL_DATA, ~0x04);
		break;
	default:
		break;
	}
}