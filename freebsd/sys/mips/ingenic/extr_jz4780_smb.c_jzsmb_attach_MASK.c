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
struct jzsmb_softc {scalar_t__ bus_freq; int i2c_freq; int /*<<< orphan*/  mtx; int /*<<< orphan*/ * clk; int /*<<< orphan*/  res; int /*<<< orphan*/ * iicbus; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC6 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct jzsmb_softc* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  jzsmb_spec ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct jzsmb_softc *sc;
	phandle_t node;
	int error;

	sc = FUNC10(dev);
	node = FUNC14(dev);
	FUNC13(&sc->mtx, FUNC9(dev), "jzsmb", MTX_DEF);

	error = FUNC5(dev, 0, 0, &sc->clk);
	if (error != 0) {
		FUNC11(dev, "cannot get clock\n");
		goto fail;
	}
	error = FUNC4(sc->clk);
	if (error != 0) {
		FUNC11(dev, "cannot enable clock\n");
		goto fail;
	}
	error = FUNC6(sc->clk, &sc->bus_freq);
	if (error != 0 || sc->bus_freq == 0) {
		FUNC11(dev, "cannot get bus frequency\n");
		return (error);
	}

	if (FUNC1(dev, jzsmb_spec, &sc->res) != 0) {
		FUNC11(dev, "cannot allocate resources for device\n");
		error = ENXIO;
		goto fail;
	}

	if (FUNC0(node, "clock-frequency", &sc->i2c_freq,
	    sizeof(sc->i2c_freq)) != 0 || sc->i2c_freq == 0)
		sc->i2c_freq = 100000;	/* Default to standard mode */

	sc->iicbus = FUNC8(dev, "iicbus", -1);
	if (sc->iicbus == NULL) {
		FUNC11(dev, "cannot add iicbus child device\n");
		error = ENXIO;
		goto fail;
	}

	FUNC2(dev);

	return (0);

fail:
	FUNC3(dev, jzsmb_spec, &sc->res);
	if (sc->clk != NULL)
		FUNC7(sc->clk);
	FUNC12(&sc->mtx);
	return (error);
}