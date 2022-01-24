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
struct jz4780_clock_softc {int /*<<< orphan*/  res; int /*<<< orphan*/ * clkdom; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct jz4780_clock_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct jz4780_clock_softc*) ; 
 int ENXIO ; 
 scalar_t__ bootverbose ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 struct jz4780_clock_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC9 (struct jz4780_clock_softc*) ; 
 scalar_t__ FUNC10 (struct jz4780_clock_softc*) ; 
 int /*<<< orphan*/  jz4780_clock_spec ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct jz4780_clock_softc *sc;

	sc = FUNC7(dev);
	if (FUNC2(dev, jz4780_clock_spec, sc->res)) {
		FUNC8(dev, "could not allocate resources for device\n");
		return (ENXIO);
	}

	sc->dev = dev;
	FUNC1(sc);

	sc->clkdom = FUNC4(dev);
	if (sc->clkdom == NULL)
		goto fail;
	if (FUNC10(sc) != 0)
		goto fail;
	if (FUNC6(sc->clkdom) != 0)
		goto fail;
	if (FUNC9(sc) != 0)
		goto fail;
	if (bootverbose)
		FUNC5(sc->clkdom);

	return (0);
fail:
	FUNC3(dev, jz4780_clock_spec, sc->res);
	FUNC0(sc);

	return (ENXIO);
}