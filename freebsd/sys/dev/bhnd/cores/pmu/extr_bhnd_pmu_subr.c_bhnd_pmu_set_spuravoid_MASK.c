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
struct TYPE_2__ {scalar_t__ chip_id; } ;
struct bhnd_pmu_softc {TYPE_1__ cid; } ;
typedef  int /*<<< orphan*/  bhnd_pmu_spuravoid ;

/* Variables and functions */
 int /*<<< orphan*/  BHND_CCS_HTAVAIL ; 
 scalar_t__ BHND_CHIPID_BCM4336 ; 
 int /*<<< orphan*/  FUNC0 (struct bhnd_pmu_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BHND_PMU_MAX_RES_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct bhnd_pmu_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BHND_PMU_RES4336_HT_AVAIL ; 
 int /*<<< orphan*/  FUNC2 (struct bhnd_pmu_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct bhnd_pmu_softc*,int /*<<< orphan*/ ) ; 

int 
FUNC4(struct bhnd_pmu_softc *sc, bhnd_pmu_spuravoid spuravoid)
{
	int error;

	/* force the HT off  */
	if (sc->cid.chip_id == BHND_CHIPID_BCM4336) {		
		FUNC0(sc, BHND_PMU_MAX_RES_MASK,
		    ~BHND_PMU_RES4336_HT_AVAIL);

		/* wait for the ht to really go away */
		FUNC2(sc, 0, BHND_CCS_HTAVAIL);
	}

	/* update the pll changes */
	error = FUNC3(sc, spuravoid);

	/* enable HT back on  */
	if (sc->cid.chip_id == BHND_CHIPID_BCM4336) {
		FUNC1(sc, BHND_PMU_MAX_RES_MASK,
		    BHND_PMU_RES4336_HT_AVAIL);
	}

	return (error);
}