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
struct mmc_softc {int /*<<< orphan*/ * owner; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct mmc_softc* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int
FUNC6(device_t busdev, device_t dev)
{
	struct mmc_softc *sc;
	int err;

	sc = FUNC4(busdev);

	FUNC1(sc);
	if (!sc->owner)
		FUNC5("mmc: releasing unowned bus.");
	if (sc->owner != dev)
		FUNC5("mmc: you don't own the bus.  game over.");
	FUNC2(sc);
	err = FUNC0(FUNC3(busdev), busdev);
	if (err)
		return (err);
	FUNC1(sc);
	sc->owner = NULL;
	FUNC2(sc);
	return (0);
}