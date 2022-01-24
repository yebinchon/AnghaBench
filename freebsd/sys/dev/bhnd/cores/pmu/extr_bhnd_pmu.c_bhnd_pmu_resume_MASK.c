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
struct bhnd_pmu_softc {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (struct bhnd_pmu_softc*) ; 
 struct bhnd_pmu_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

int
FUNC3(device_t dev)
{
	struct bhnd_pmu_softc	*sc;
	int			 error;

	sc = FUNC1(dev);

	/* Re-initialize PMU */
	if ((error = FUNC0(sc))) {
		FUNC2(sc->dev, "PMU init failed: %d\n", error);
		return (error);
	}

	return (0);
}