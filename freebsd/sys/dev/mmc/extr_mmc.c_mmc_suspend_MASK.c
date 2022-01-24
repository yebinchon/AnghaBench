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
struct mmc_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct mmc_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_softc*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct mmc_softc *sc = FUNC1(dev);
	int err;

	err = FUNC0(dev);
	if (err != 0)
		return (err);
	/*
	 * We power down with the bus acquired here, mainly so that no device
	 * is selected any longer and sc->last_rca gets set to 0.  Otherwise,
	 * the deselect as part of the bus acquisition in mmc_scan() may fail
	 * during resume, as the bus isn't powered up again before later in
	 * mmc_go_discovery().
	 */
	err = FUNC2(dev, dev);
	if (err != 0)
		return (err);
	FUNC3(sc);
	err = FUNC4(dev, dev);
	return (err);
}