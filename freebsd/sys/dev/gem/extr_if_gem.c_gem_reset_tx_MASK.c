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
struct gem_softc {scalar_t__ sc_variant; int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int BUS_SPACE_BARRIER_READ ; 
 int BUS_SPACE_BARRIER_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct gem_softc*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gem_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gem_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gem_softc*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct gem_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gem_softc*,int /*<<< orphan*/ ,int) ; 
 int GEM_ERI_CACHE_LINE_SIZE ; 
 int /*<<< orphan*/  GEM_RESET ; 
 int GEM_RESET_CLSZ_SHFT ; 
 int GEM_RESET_TX ; 
 scalar_t__ GEM_SUN_ERI ; 
 int /*<<< orphan*/  GEM_TX_CONFIG ; 
 int /*<<< orphan*/  GEM_TX_CONFIG_TXDMA_EN ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct gem_softc*) ; 

__attribute__((used)) static int
FUNC9(struct gem_softc *sc)
{

	/*
	 * Resetting while DMA is in progress can cause a bus hang, so we
	 * disable DMA first.
	 */
	(void)FUNC8(sc);
	FUNC3(sc, GEM_TX_CONFIG, 0);
	FUNC1(sc, GEM_TX_CONFIG, 4,
	    BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);
	if (!FUNC2(sc, GEM_TX_CONFIG, GEM_TX_CONFIG_TXDMA_EN, 0))
		FUNC7(sc->sc_dev, "cannot disable TX DMA\n");

	/* Wait 5ms extra. */
	FUNC0(5000);

	/* Finally, reset the ETX. */
	FUNC6(sc, GEM_RESET, GEM_RESET_TX |
	    (sc->sc_variant == GEM_SUN_ERI ? GEM_ERI_CACHE_LINE_SIZE <<
	    GEM_RESET_CLSZ_SHFT : 0));
	FUNC4(sc, GEM_RESET, 4,
	    BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);
	if (!FUNC5(sc, GEM_RESET, GEM_RESET_TX, 0)) {
		FUNC7(sc->sc_dev, "cannot reset transmitter\n");
		return (1);
	}
	return (0);
}