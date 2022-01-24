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
struct syscon_generic_softc {int /*<<< orphan*/ * syscon; int /*<<< orphan*/ * mem_res; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct syscon_generic_softc*) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 struct syscon_generic_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  syscon_generic_class ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct syscon_generic_softc *sc;
	int rid;

	sc = FUNC2(dev);
	sc->dev = dev;
	rid = 0;

	sc->mem_res = FUNC1(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->mem_res == NULL) {
		FUNC3(dev, "Cannot allocate memory resource\n");
		return (ENXIO);
	}

	FUNC0(sc);
	sc->syscon = FUNC5(dev, &syscon_generic_class,
		FUNC4(dev));
	if (sc->syscon == NULL) {
		FUNC3(dev, "Failed to create/register syscon\n");
		return (ENXIO);
	}
	return (0);
}