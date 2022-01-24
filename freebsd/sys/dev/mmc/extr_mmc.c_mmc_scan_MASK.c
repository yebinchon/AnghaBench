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
struct mmc_softc {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_softc*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct mmc_softc *sc)
{
	device_t dev = sc->dev;
	int err;

	err = FUNC2(dev, dev);
	if (err != 0) {
		FUNC1(dev, "Failed to acquire bus for scanning\n");
		return;
	}
	FUNC3(sc);
	err = FUNC4(dev, dev);
	if (err != 0) {
		FUNC1(dev, "Failed to release bus after scanning\n");
		return;
	}
	(void)FUNC0(dev);
}