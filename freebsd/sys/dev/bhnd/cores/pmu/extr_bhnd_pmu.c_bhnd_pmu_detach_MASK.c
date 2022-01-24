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
struct bhnd_pmu_softc {int /*<<< orphan*/  chipc_dev; int /*<<< orphan*/  dev; int /*<<< orphan*/  clkctl; int /*<<< orphan*/  query; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BHND_SERVICE_ANY ; 
 int /*<<< orphan*/  BHND_SERVICE_CHIPC ; 
 int /*<<< orphan*/  FUNC0 (struct bhnd_pmu_softc*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bhnd_pmu_softc* FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(device_t dev)
{
	struct bhnd_pmu_softc	*sc;
	int			 error;

	sc = FUNC5(dev);

	if ((error = FUNC1(dev, BHND_SERVICE_ANY)))
		return (error);

	FUNC0(sc);
	FUNC3(&sc->query);
	FUNC2(sc->clkctl);
	FUNC4(sc->dev, sc->chipc_dev, BHND_SERVICE_CHIPC);
	
	return (0);
}