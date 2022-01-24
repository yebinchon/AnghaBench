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
struct twsi_softc {int /*<<< orphan*/ * iicbus; int /*<<< orphan*/  res; int /*<<< orphan*/  mutex; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct twsi_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  res_spec ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  twsi_intr_start ; 

int
FUNC9(device_t dev)
{
	struct twsi_softc *sc;

	sc = FUNC5(dev);
	sc->dev = dev;

	FUNC7(&sc->mutex, FUNC4(dev), "twsi", MTX_DEF);

	if (FUNC0(dev, res_spec, sc->res)) {
		FUNC6(dev, "could not allocate resources\n");
		FUNC8(dev);
		return (ENXIO);
	}

	/* Attach the iicbus. */
	if ((sc->iicbus = FUNC3(dev, "iicbus", -1)) == NULL) {
		FUNC6(dev, "could not allocate iicbus instance\n");
		FUNC8(dev);
		return (ENXIO);
	}
	FUNC1(dev);

	FUNC2(twsi_intr_start, dev);

	return (0);
}