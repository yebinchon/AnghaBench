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
struct jz4780_efuse_softc {int /*<<< orphan*/  res; int /*<<< orphan*/  data; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct jz4780_efuse_softc*,int /*<<< orphan*/ ,int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  JZ_EFUCFG ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct jz4780_efuse_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct jz4780_efuse_softc*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  jz4780_efuse_spec ; 
 int /*<<< orphan*/  FUNC6 (struct jz4780_efuse_softc*) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct jz4780_efuse_softc *sc;

 	sc = FUNC3(dev);
	sc->dev = dev;

	if (FUNC1(dev, jz4780_efuse_spec, sc->res)) {
		FUNC4(dev, "could not allocate resources for device\n");
		return (ENXIO);
	}

	/*
	 * Default RD_STROBE to 4 h2clk cycles, should already be set to 4 by  reset
	 * but configure it anyway.
	 */
	FUNC0(sc, JZ_EFUCFG, 0x00040000);

	/* Read user-id segment */
	FUNC5(sc, 0x18, &sc->data, sizeof(sc->data));

	/*
	 * Set resource hints for the dme device to discover its
	 * MAC address, if not set already.
	 */
	FUNC6(sc);

	/* Resource conflicts with NEMC, release early */
	FUNC2(dev, jz4780_efuse_spec, sc->res);
	return (0);
}