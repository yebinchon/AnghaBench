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
struct mtk_sysctl_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/ * mem_res; scalar_t__ mem_rid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct mtk_sysctl_softc*) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 struct mtk_sysctl_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct mtk_sysctl_softc* mtk_sysctl_sc ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct mtk_sysctl_softc *sc = FUNC2(dev);

	if (FUNC3(dev) != 0 || mtk_sysctl_sc != NULL) {
		FUNC4(dev, "Only one sysctl module supported\n");
		return (ENXIO);
	}

	mtk_sysctl_sc = sc;

	/* Map control/status registers. */
	sc->mem_rid = 0;
	sc->mem_res = FUNC1(dev, SYS_RES_MEMORY,
	    &sc->mem_rid, RF_ACTIVE);

	if (sc->mem_res == NULL) {
		FUNC4(dev, "couldn't map memory\n");
		FUNC5(dev);
		return (ENXIO);
	}

	sc->dev = dev;

	FUNC0(sc);

	return (0);
}