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
typedef  unsigned long long uint64_t ;
typedef  scalar_t__ uint32_t ;
struct jz4780_nemc_softc {scalar_t__ clock_tick_psecs; int /*<<< orphan*/  clk; int /*<<< orphan*/  simplebus_sc; int /*<<< orphan*/  res; int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,unsigned long long*) ; 
 struct jz4780_nemc_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jz4780_nemc_spec ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct jz4780_nemc_softc *sc = FUNC8(dev);
	phandle_t node;
	uint64_t freq;

	sc->dev = dev;

	if (FUNC2(dev, jz4780_nemc_spec, sc->res)) {
		FUNC9(dev, "could not allocate resources for device\n");
		return (ENXIO);
	}

	node = FUNC12(dev);

	/* Initialize simplebus and enumerate resources */
	FUNC14(dev, node);

	if (FUNC11(node, &sc->simplebus_sc) < 0)
		goto error;

	/* Figure our underlying clock rate. */
	if (FUNC6(dev, 0, 0, &sc->clk) != 0) {
		FUNC9(dev, "could not lookup device clock\n");
		goto error;
	}
	if (FUNC5(sc->clk) != 0) {
		FUNC9(dev, "could not enable device clock\n");
		goto error;
	}
	if (FUNC7(sc->clk, &freq) != 0) {
		FUNC9(dev, "could not determine clock speed\n");
		goto error;
	}

	/* Convert clock frequency to picoseconds-per-tick value. */
	sc->clock_tick_psecs = (uint32_t)(1000000000000ULL / freq);

	/*
	 * Allow devices to identify.
	 */
	FUNC4(dev);

	/*
	 * Now walk the tree and attach top level devices
	 */
	for (node = FUNC0(node); node > 0; node = FUNC1(node))
		FUNC13(dev, node, 0, NULL, -1, NULL);

	return (FUNC3(dev));
error:
	FUNC10(dev);
	return (ENXIO);
}