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
struct bhnd_pmu_softc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct bhnd_pmu_softc*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bhnd_pmu_softc*) ; 
 int /*<<< orphan*/  BHND_PMU_ST ; 
 int BHND_PMU_ST_EXTLPOAVAIL ; 
 int /*<<< orphan*/  FUNC3 (struct bhnd_pmu_softc*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  BHND_PMU_XTALFREQ ; 
 int /*<<< orphan*/  BHND_PMU_XTALFREQ_REG_ILPCTR ; 
 unsigned int BHND_PMU_XTALFREQ_REG_MEASURE_SHIFT ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int EXT_ILP_HZ ; 

uint32_t
FUNC5(struct bhnd_pmu_softc *sc)
{
	uint32_t alp_khz;
	uint32_t pmu_st;

	if (FUNC2(sc) < 10)
		return (0);

	pmu_st = FUNC1(sc, BHND_PMU_ST);
	if (pmu_st & BHND_PMU_ST_EXTLPOAVAIL) {
		uint32_t alp_hz, ilp_ctr;

		/* Enable frequency measurement */
		FUNC3(sc, BHND_PMU_XTALFREQ, 1U <<
		    BHND_PMU_XTALFREQ_REG_MEASURE_SHIFT);

		/* Delay for well over 4 ILP clocks */
		FUNC4(1000);

		/* Read the latched number of ALP ticks per 4 ILP ticks */
		ilp_ctr = FUNC1(sc, BHND_PMU_XTALFREQ);
		ilp_ctr = FUNC0(ilp_ctr,
		    BHND_PMU_XTALFREQ_REG_ILPCTR);

		/* Turn off PMU_XTALFREQ_REG_MEASURE to save power */
		FUNC3(sc, BHND_PMU_XTALFREQ, 0);

		/* Calculate ALP frequency */
		alp_hz = (ilp_ctr * EXT_ILP_HZ) / 4;

		/* Round to nearest 100KHz and convert to KHz */
		alp_khz = (alp_hz + 50000) / 100000 * 100;
	} else {
		alp_khz = 0;
	}

	return (alp_khz);
}