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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int chip_id; } ;
struct bhnd_pmu_softc {TYPE_1__ cid; } ;

/* Variables and functions */
#define  BHND_CHIPID_BCM4312 130 
#define  BHND_CHIPID_BCM4328 129 
#define  BHND_CHIPID_BCM5354 128 
 int /*<<< orphan*/  FUNC0 (struct bhnd_pmu_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BHND_PMU_MIN_RES_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct bhnd_pmu_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RES4312_PA_REF_LDO ; 
 int /*<<< orphan*/  RES4328_PA_REF_LDO ; 
 int /*<<< orphan*/  RES5354_PA_REF_LDO ; 

int
FUNC3(struct bhnd_pmu_softc *sc, bool enable)
{
	uint32_t ldo;

	switch (sc->cid.chip_id) {
	case BHND_CHIPID_BCM4328:
		ldo = FUNC2(RES4328_PA_REF_LDO);
		break;
	case BHND_CHIPID_BCM5354:
		ldo = FUNC2(RES5354_PA_REF_LDO);
		break;
	case BHND_CHIPID_BCM4312:
		ldo = FUNC2(RES4312_PA_REF_LDO);
		break;
	default:
		return (ENODEV);
	}

	if (enable) {
		FUNC1(sc, BHND_PMU_MIN_RES_MASK, ldo);
	} else {
		FUNC0(sc, BHND_PMU_MIN_RES_MASK, ~ldo);
	}

	return (0);
}