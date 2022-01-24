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
typedef  int /*<<< orphan*/  uint32_t ;
struct gem_softc {int /*<<< orphan*/ * sc_res; int /*<<< orphan*/  sc_ih; int /*<<< orphan*/  sc_enaddr; int /*<<< orphan*/  sc_flags; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_variant; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC1 (struct gem_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gem_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gem_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct gem_softc*,int /*<<< orphan*/ ) ; 
 size_t GEM_RES_INTR ; 
 int /*<<< orphan*/  GEM_SBUS_BIF_RESET ; 
 int /*<<< orphan*/  GEM_SBUS_CFG_64BIT ; 
 int /*<<< orphan*/  GEM_SBUS_CFG_BURST_32 ; 
 int /*<<< orphan*/  GEM_SBUS_CFG_BURST_64 ; 
 int /*<<< orphan*/  GEM_SBUS_CFG_PARITY ; 
 int /*<<< orphan*/  GEM_SBUS_CONFIG ; 
 int /*<<< orphan*/  GEM_SERDES ; 
 int /*<<< orphan*/  GEM_SUN_GEM ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SBUS_BURST64_MASK ; 
 int SBUS_BURST64_SHIFT ; 
 int SBUS_BURST_32 ; 
 int SBUS_BURST_64 ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct gem_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct gem_softc* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC12 (struct gem_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct gem_softc*) ; 
 int /*<<< orphan*/  gem_intr ; 
 int /*<<< orphan*/  gem_sbus_res_spec ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct gem_softc *sc;
	int burst;
	uint32_t val;

	sc = FUNC10(dev);
	sc->sc_variant = GEM_SUN_GEM;
	sc->sc_dev = dev;
	/* All known SBus models use a SERDES. */
	sc->sc_flags = GEM_SERDES;

	if (FUNC6(dev, gem_sbus_res_spec, sc->sc_res)) {
		FUNC11(dev, "failed to allocate resources\n");
		FUNC7(dev, gem_sbus_res_spec, sc->sc_res);
		return (ENXIO);
	}

	FUNC4(sc, FUNC9(dev));

	FUNC5(dev, sc->sc_enaddr);

	burst = FUNC14(dev);
	val = GEM_SBUS_CFG_PARITY;
	if ((burst & SBUS_BURST64_MASK) != 0) {
		val |= GEM_SBUS_CFG_64BIT;
		burst >>= SBUS_BURST64_SHIFT;
	}
	if ((burst & SBUS_BURST_64) != 0)
		val |= GEM_SBUS_CFG_BURST_64;
	else if ((burst & SBUS_BURST_32) != 0)
		val |= GEM_SBUS_CFG_BURST_32;
	else {
		FUNC11(dev, "unsupported burst size\n");
		goto fail;
	}
	/* Reset the SBus interface only. */
	(void)FUNC1(sc, GEM_SBUS_BIF_RESET);
	FUNC0(100);
	FUNC2(sc, GEM_SBUS_CONFIG, val);

	if (FUNC12(sc) != 0) {
		FUNC11(dev, "could not be attached\n");
		goto fail;
	}

	if (FUNC8(dev, sc->sc_res[GEM_RES_INTR], INTR_TYPE_NET |
	    INTR_MPSAFE, NULL, gem_intr, sc, &sc->sc_ih) != 0) {
		FUNC11(dev, "failed to set up interrupt\n");
		FUNC13(sc);
		goto fail;
	}
	return (0);

 fail:
	FUNC3(sc);
	FUNC7(dev, gem_sbus_res_spec, sc->sc_res);
	return (ENXIO);
}