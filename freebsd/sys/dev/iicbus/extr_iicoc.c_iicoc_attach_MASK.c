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
struct iicoc_softc {int /*<<< orphan*/ * iicbus; int /*<<< orphan*/ * mem_res; scalar_t__ mem_rid; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct iicoc_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	int bus;
	struct iicoc_softc *sc;

	sc = FUNC3(dev);
	bus = FUNC4(dev);

	sc->dev = dev;
	FUNC7(&sc->sc_mtx, "iicoc", "iicoc", MTX_DEF);
	sc->mem_rid = 0;
	sc->mem_res = FUNC0(dev,
	    SYS_RES_MEMORY, &sc->mem_rid, 0x100, RF_ACTIVE);

	if (sc->mem_res == NULL) {
		FUNC5(dev, "Could not allocate bus resource.\n");
		return (-1);
	}
	FUNC6(dev);
	sc->iicbus = FUNC2(dev, "iicbus", -1);
	if (sc->iicbus == NULL) {
		FUNC5(dev, "Could not allocate iicbus instance.\n");
		return (-1);
	}
	FUNC1(dev);

	return (0);
}