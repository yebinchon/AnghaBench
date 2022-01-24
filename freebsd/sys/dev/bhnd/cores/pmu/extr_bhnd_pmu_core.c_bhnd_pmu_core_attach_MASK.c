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
struct bhnd_resource {int dummy; } ;
struct bhnd_pmu_softc {int rid; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct bhnd_resource* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct bhnd_resource*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct bhnd_resource*) ; 
 struct bhnd_pmu_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct bhnd_pmu_softc	*sc;
	struct bhnd_resource	*res;
	int			 error;
	int			 rid;

	sc = FUNC4(dev);

	/* Allocate register block */
	rid = 0;
	res = FUNC1(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);
	if (res == NULL) {
		FUNC5(dev, "failed to allocate resources\n");
		return (ENXIO);
	}

	/* Allocate our per-core PMU state */
	if ((error = FUNC0(dev))) {
		FUNC5(sc->dev, "failed to allocate PMU state: %d\n",
		    error);

		return (error);
	}

	/* Delegate to common driver implementation */
	if ((error = FUNC2(dev, res))) {
		FUNC3(dev, SYS_RES_MEMORY, rid, res);
		return (error);
	}

	sc->rid = rid;
	return (0);
}