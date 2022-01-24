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
struct ar5315_spi_softc {int /*<<< orphan*/  sc_mem_res; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 struct ar5315_spi_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct ar5315_spi_softc *sc = FUNC4(dev);
	int rid;

	sc->sc_dev = dev;
        rid = 0;
	sc->sc_mem_res = FUNC1(dev, SYS_RES_MEMORY, &rid, 
	    RF_ACTIVE);
	if (!sc->sc_mem_res) {
		FUNC5(dev, "Could not map memory\n");
		return (ENXIO);
	}

	FUNC3(dev, "spibus", -1);
	FUNC0(dev);

	return (FUNC2(dev));
}