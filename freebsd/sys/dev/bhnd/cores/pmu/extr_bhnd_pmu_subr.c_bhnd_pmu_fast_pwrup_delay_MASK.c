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
typedef  int u_int ;
struct TYPE_2__ {int chip_id; } ;
struct bhnd_pmu_softc {int /*<<< orphan*/  query; TYPE_1__ cid; } ;

/* Variables and functions */
#define  BHND_CHIPID_BCM4313 141 
#define  BHND_CHIPID_BCM4319 140 
#define  BHND_CHIPID_BCM43224 139 
#define  BHND_CHIPID_BCM43225 138 
#define  BHND_CHIPID_BCM43235 137 
#define  BHND_CHIPID_BCM43236 136 
#define  BHND_CHIPID_BCM43238 135 
#define  BHND_CHIPID_BCM4325 134 
#define  BHND_CHIPID_BCM4329 133 
#define  BHND_CHIPID_BCM4330 132 
#define  BHND_CHIPID_BCM4331 131 
#define  BHND_CHIPID_BCM4336 130 
#define  BHND_CHIPID_BCM43421 129 
#define  BHND_CHIPID_BCM6362 128 
 int BHND_PMU_MAX_TRANSITION_DLY ; 
 int /*<<< orphan*/  BHND_PMU_RES4325_HT_AVAIL ; 
 int /*<<< orphan*/  BHND_PMU_RES4329_HT_AVAIL ; 
 int /*<<< orphan*/  BHND_PMU_RES4330_HT_AVAIL ; 
 int /*<<< orphan*/  BHND_PMU_RES4336_HT_AVAIL ; 
 int D11SCC_SLOW2FAST_TRANSITION ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct bhnd_pmu_softc*,int /*<<< orphan*/ ,int*) ; 

int
FUNC2(struct bhnd_pmu_softc *sc, u_int *pwrup_delay)
{
	uint32_t	ilp;
	uint32_t	uptime;
	u_int		delay;
	int		error;

	switch (sc->cid.chip_id) {
	case BHND_CHIPID_BCM43224:
	case BHND_CHIPID_BCM43225:
	case BHND_CHIPID_BCM43421:
	case BHND_CHIPID_BCM43235:
	case BHND_CHIPID_BCM43236:
	case BHND_CHIPID_BCM43238:
	case BHND_CHIPID_BCM4331:
	case BHND_CHIPID_BCM6362:
	case BHND_CHIPID_BCM4313:
		delay = 3700;
		break;

	case BHND_CHIPID_BCM4325:
		error = FUNC1(sc, BHND_PMU_RES4325_HT_AVAIL,
		    &uptime);
		if (error)
			return (error);

		ilp = FUNC0(&sc->query);
		delay = (uptime + D11SCC_SLOW2FAST_TRANSITION) *
		    ((1000000 + ilp - 1) / ilp);
		delay = (11 * delay) / 10;
		break;

	case BHND_CHIPID_BCM4329:
		error = FUNC1(sc, BHND_PMU_RES4329_HT_AVAIL,
		    &uptime);
		if (error)
			return (error);

		ilp = FUNC0(&sc->query);
		delay = (uptime + D11SCC_SLOW2FAST_TRANSITION) *
		    ((1000000 + ilp - 1) / ilp);
		delay = (11 * delay) / 10;
		break;

	case BHND_CHIPID_BCM4319:
		delay = 3700;
		break;

	case BHND_CHIPID_BCM4336:
		error = FUNC1(sc, BHND_PMU_RES4336_HT_AVAIL,
		    &uptime);
		if (error)
			return (error);

		ilp = FUNC0(&sc->query);
		delay = (uptime + D11SCC_SLOW2FAST_TRANSITION) *
		    ((1000000 + ilp - 1) / ilp);
		delay = (11 * delay) / 10;
		break;

	case BHND_CHIPID_BCM4330:
		error = FUNC1(sc, BHND_PMU_RES4330_HT_AVAIL,
		    &uptime);
		if (error)
			return (error);

		ilp = FUNC0(&sc->query);
		delay = (uptime + D11SCC_SLOW2FAST_TRANSITION) *
		    ((1000000 + ilp - 1) / ilp);
		delay = (11 * delay) / 10;
		break;

	default:
		delay = BHND_PMU_MAX_TRANSITION_DLY;
		break;
	}

	*pwrup_delay = delay;
	return (0);
}