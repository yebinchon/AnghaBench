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
typedef  scalar_t__ uint32_t ;
struct bhnd_pmu_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bhnd_pmu_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BHND_PMU_ST ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

uint32_t
FUNC2(struct bhnd_pmu_softc *sc, uint32_t clk,
    uint32_t delay)
{
	uint32_t pmu_st;

	for (uint32_t i = 0; i < delay; i += 10) {
		pmu_st = FUNC0(sc, BHND_PMU_ST);
		if ((pmu_st & clk) == clk)
			return (clk);
		
		FUNC1(10);
	}

	pmu_st = FUNC0(sc, BHND_PMU_ST);
	return (pmu_st & clk);
}