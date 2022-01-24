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
struct bhnd_pmu_query {int ilp_cps; } ;

/* Variables and functions */
 int FUNC0 (struct bhnd_pmu_query*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BHND_PMU_TIMER ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ILP_CALC_DUR ; 

uint32_t
FUNC2(struct bhnd_pmu_query *sc)
{
	uint32_t start, end, delta;

	if (sc->ilp_cps == 0) {
		start = FUNC0(sc, BHND_PMU_TIMER);
		FUNC1(ILP_CALC_DUR);
		end = FUNC0(sc, BHND_PMU_TIMER);
		delta = end - start;
		sc->ilp_cps = delta * (1000 / ILP_CALC_DUR);
	}

	return (sc->ilp_cps);
}