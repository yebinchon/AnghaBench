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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int chip_id; int chip_rev; } ;
struct TYPE_3__ {int board_flags; } ;
struct bhnd_pmu_softc {TYPE_2__ cid; TYPE_1__ board; int /*<<< orphan*/  chipc_dev; } ;

/* Variables and functions */
 int BHND_BFL_LNLDO2_2P5 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  BHND_CHIPID_BCM4325 130 
#define  BHND_CHIPID_BCM4330 129 
#define  BHND_CHIPID_BCM4336 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bhnd_pmu_softc*,int,int,int) ; 
 int /*<<< orphan*/  CHIPC_CST4325_PMUTOP_2B ; 
 int /*<<< orphan*/  SET_LDO_VOLTAGE_CBUCK_BURST ; 
 int /*<<< orphan*/  SET_LDO_VOLTAGE_CBUCK_PWM ; 
 int /*<<< orphan*/  SET_LDO_VOLTAGE_CLDO_BURST ; 
 int /*<<< orphan*/  SET_LDO_VOLTAGE_CLDO_PWM ; 
 int /*<<< orphan*/  SET_LDO_VOLTAGE_LNLDO1 ; 
 int /*<<< orphan*/  SET_LDO_VOLTAGE_LNLDO2_SEL ; 
 int /*<<< orphan*/  FUNC3 (struct bhnd_pmu_softc*,int /*<<< orphan*/ ,int) ; 

void
FUNC4(struct bhnd_pmu_softc *sc)
{
	uint32_t chipst;

	switch (sc->cid.chip_id) {
	case BHND_CHIPID_BCM4325:
		if (sc->cid.chip_rev <= 2)
			break;

		chipst = FUNC0(sc->chipc_dev);
		if (FUNC1(chipst, CHIPC_CST4325_PMUTOP_2B)) {
			FUNC3(sc, SET_LDO_VOLTAGE_CLDO_PWM,
			    0xf);
			FUNC3(sc, SET_LDO_VOLTAGE_CLDO_BURST,
			    0xf);
		}

		FUNC3(sc, SET_LDO_VOLTAGE_CBUCK_PWM, 0xb);
		FUNC3(sc, SET_LDO_VOLTAGE_CBUCK_BURST, 0xb);

		FUNC3(sc, SET_LDO_VOLTAGE_LNLDO1, 0x1);
		if (sc->board.board_flags & BHND_BFL_LNLDO2_2P5) {
			FUNC3(sc, SET_LDO_VOLTAGE_LNLDO2_SEL,
			    0x1);
		}

		break;
	case BHND_CHIPID_BCM4336:
		/* Reduce CLDO PWM output voltage to 1.2V */
		FUNC3(sc, SET_LDO_VOLTAGE_CLDO_PWM, 0xe);
		/* Reduce CLDO BURST output voltage to 1.2V */
		FUNC3(sc, SET_LDO_VOLTAGE_CLDO_BURST, 0xe);
		/* Reduce LNLDO1 output voltage to 1.2V */
		FUNC3(sc, SET_LDO_VOLTAGE_LNLDO1, 0xe);
		if (sc->cid.chip_rev == 0)
			FUNC2(sc, 2, 0x400000, 0x400000);
		break;

	case BHND_CHIPID_BCM4330:
		/* CBUCK Voltage is 1.8 by default and set that to 1.5 */
		FUNC3(sc, SET_LDO_VOLTAGE_CBUCK_PWM, 0);
		break;
	default:
		break;
	}
}