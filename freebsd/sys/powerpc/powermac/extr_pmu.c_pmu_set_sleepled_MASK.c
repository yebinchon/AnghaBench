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
typedef  int uint8_t ;
struct pmu_softc {int /*<<< orphan*/  sc_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  PMU_SET_SLEEPLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pmu_softc*,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(void *xsc, int onoff)
{
	struct pmu_softc *sc = xsc;
	uint8_t cmd[] = {4, 0, 0};

	cmd[2] = onoff;
	
	FUNC0(&sc->sc_mutex);
	FUNC2(sc, PMU_SET_SLEEPLED, 3, cmd, 0, NULL);
	FUNC1(&sc->sc_mutex);
}