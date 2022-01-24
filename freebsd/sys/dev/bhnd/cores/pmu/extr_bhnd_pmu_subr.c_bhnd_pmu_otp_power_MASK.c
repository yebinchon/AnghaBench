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
typedef  int uint32_t ;
struct TYPE_2__ {int chip_id; } ;
struct bhnd_pmu_softc {TYPE_1__ cid; } ;

/* Variables and functions */
#define  BHND_CHIPID_BCM4315 137 
#define  BHND_CHIPID_BCM4319 136 
#define  BHND_CHIPID_BCM4322 135 
#define  BHND_CHIPID_BCM43221 134 
#define  BHND_CHIPID_BCM43231 133 
#define  BHND_CHIPID_BCM4325 132 
#define  BHND_CHIPID_BCM4329 131 
#define  BHND_CHIPID_BCM4330 130 
#define  BHND_CHIPID_BCM4336 129 
#define  BHND_CHIPID_BCM4342 128 
 int /*<<< orphan*/  FUNC0 (struct bhnd_pmu_softc*,int /*<<< orphan*/ ,int) ; 
 int BHND_PMU_MAX_TRANSITION_DLY ; 
 int /*<<< orphan*/  BHND_PMU_MIN_RES_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct bhnd_pmu_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct bhnd_pmu_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BHND_PMU_RES_STATE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int ENXIO ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bhnd_pmu_softc*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bhnd_pmu_softc*,char*) ; 
 int /*<<< orphan*/  RES4315_OTP_PU ; 
 int /*<<< orphan*/  RES4319_OTP_PU ; 
 int /*<<< orphan*/  RES4322_OTP_PU ; 
 int /*<<< orphan*/  RES4325_OTP_PU ; 
 int /*<<< orphan*/  RES4329_OTP_PU ; 
 int /*<<< orphan*/  RES4330_OTP_PU ; 
 int /*<<< orphan*/  RES4336_OTP_PU ; 
 int FUNC7 (struct bhnd_pmu_softc*,int,int) ; 
 int FUNC8 (struct bhnd_pmu_softc*,int*,int /*<<< orphan*/ *) ; 

int
FUNC9(struct bhnd_pmu_softc *sc, bool on)
{
	uint32_t	deps;
	uint32_t	min_mask;
	uint32_t	rsrcs;
	int		error;

	/* Determine rsrcs to turn on/off OTP power */
	switch (sc->cid.chip_id) {
	case BHND_CHIPID_BCM4322:
	case BHND_CHIPID_BCM43221:
	case BHND_CHIPID_BCM43231:
	case BHND_CHIPID_BCM4342:
		rsrcs = FUNC4(RES4322_OTP_PU);
		break;
	case BHND_CHIPID_BCM4315:
		rsrcs = FUNC4(RES4315_OTP_PU);
		break;
	case BHND_CHIPID_BCM4325:
		rsrcs = FUNC4(RES4325_OTP_PU);
		break;
	case BHND_CHIPID_BCM4329:
		rsrcs = FUNC4(RES4329_OTP_PU);
		break;
	case BHND_CHIPID_BCM4319:
		rsrcs = FUNC4(RES4319_OTP_PU);
		break;
	case BHND_CHIPID_BCM4336:
		rsrcs = FUNC4(RES4336_OTP_PU);
		break;
	case BHND_CHIPID_BCM4330:
		rsrcs = FUNC4(RES4330_OTP_PU);
		break;
	default:
		/* Not required? */
		return (0);
	}

	/* Fetch all dependencies */
	deps = FUNC7(sc, rsrcs, true);

	/* Exclude the minimum resource set */
	if ((error = FUNC8(sc, &min_mask, NULL)))
		return (error);

	deps &= ~min_mask;

	/* Turn on/off the power */
	if (on) {
		uint32_t state;

		FUNC5(sc, "Adding rsrc 0x%x to min_res_mask\n",
		    rsrcs | deps);
		FUNC1(sc, BHND_PMU_MIN_RES_MASK, (rsrcs|deps));

		/* Wait for all resources to become available */
		for (int i = 0; i < BHND_PMU_MAX_TRANSITION_DLY; i += 10) {	
			state = FUNC2(sc, BHND_PMU_RES_STATE);
			if ((state & rsrcs) == rsrcs)
				break;

			FUNC3(10);
		}

		if ((state & rsrcs) != rsrcs) {
			FUNC6(sc, "timeout waiting for OTP resource "
			    "enable\n");
			return (ENXIO);
		}
	} else {
		FUNC5(sc, "Removing rsrc 0x%x from min_res_mask\n",
		    rsrcs | deps);
		FUNC0(sc, BHND_PMU_MIN_RES_MASK, ~(rsrcs|deps));
	}

	return (0);
}