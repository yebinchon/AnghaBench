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
struct altera_sdcard_softc {int /*<<< orphan*/ * as_res; scalar_t__ as_rid; int /*<<< orphan*/  as_unit; int /*<<< orphan*/  as_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (struct altera_sdcard_softc*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 struct altera_sdcard_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct altera_sdcard_softc *sc;

	sc = FUNC2(dev);
	sc->as_dev = dev;
	sc->as_unit = FUNC3(dev);
	sc->as_rid = 0;
	sc->as_res = FUNC1(dev, SYS_RES_MEMORY,
	    &sc->as_rid, RF_ACTIVE);
	if (sc->as_res == NULL) {
		FUNC4(dev, "couldn't map memory\n");
		return (ENXIO);
	}
	FUNC0(sc);
	return (0);
}