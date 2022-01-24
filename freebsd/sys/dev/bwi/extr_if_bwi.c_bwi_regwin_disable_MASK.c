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
typedef  int uint32_t ;
struct bwi_softc {int /*<<< orphan*/  sc_dev; } ;
struct bwi_regwin {int dummy; } ;

/* Variables and functions */
 int BWI_DBG_ATTACH ; 
 int BWI_DBG_INIT ; 
 int /*<<< orphan*/  BWI_STATE_HI ; 
 int BWI_STATE_HI_BUSY ; 
 int /*<<< orphan*/  BWI_STATE_LO ; 
 int BWI_STATE_LO_CLOCK ; 
 int /*<<< orphan*/  BWI_STATE_LO_FLAGS_MASK ; 
 int BWI_STATE_LO_GATED_CLOCK ; 
 int BWI_STATE_LO_RESET ; 
 int FUNC0 (struct bwi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bwi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct bwi_softc*,int,char*,int /*<<< orphan*/ ) ; 
 int NRETRY ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct bwi_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct bwi_regwin*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void
FUNC8(struct bwi_softc *sc, struct bwi_regwin *rw, uint32_t flags)
{
	uint32_t state_lo, disable_bits;
	int i;

	state_lo = FUNC0(sc, BWI_STATE_LO);

	/*
	 * If current regwin is in 'reset' state, it was already disabled.
	 */
	if (state_lo & BWI_STATE_LO_RESET) {
		FUNC3(sc, BWI_DBG_ATTACH | BWI_DBG_INIT,
			"%s was already disabled\n", FUNC6(rw));
		return;
	}

	disable_bits = FUNC5(sc);

	/*
	 * Disable normal clock
	 */
	state_lo = BWI_STATE_LO_CLOCK | disable_bits;
	FUNC1(sc, BWI_STATE_LO, state_lo);

	/*
	 * Wait until normal clock is disabled
	 */
#define NRETRY	1000
	for (i = 0; i < NRETRY; ++i) {
		state_lo = FUNC0(sc, BWI_STATE_LO);
		if (state_lo & disable_bits)
			break;
		FUNC2(10);
	}
	if (i == NRETRY) {
		FUNC7(sc->sc_dev, "%s disable clock timeout\n",
			      FUNC6(rw));
	}

	for (i = 0; i < NRETRY; ++i) {
		uint32_t state_hi;

		state_hi = FUNC0(sc, BWI_STATE_HI);
		if ((state_hi & BWI_STATE_HI_BUSY) == 0)
			break;
		FUNC2(10);
	}
	if (i == NRETRY) {
		FUNC7(sc->sc_dev, "%s wait BUSY unset timeout\n",
			      FUNC6(rw));
	}
#undef NRETRY

	/*
	 * Reset and disable regwin with gated clock
	 */
	state_lo = BWI_STATE_LO_RESET | disable_bits |
		   BWI_STATE_LO_CLOCK | BWI_STATE_LO_GATED_CLOCK |
		   FUNC4(flags, BWI_STATE_LO_FLAGS_MASK);
	FUNC1(sc, BWI_STATE_LO, state_lo);

	/* Flush pending bus write */
	FUNC0(sc, BWI_STATE_LO);
	FUNC2(1);

	/* Reset and disable regwin */
	state_lo = BWI_STATE_LO_RESET | disable_bits |
		   FUNC4(flags, BWI_STATE_LO_FLAGS_MASK);
	FUNC1(sc, BWI_STATE_LO, state_lo);

	/* Flush pending bus write */
	FUNC0(sc, BWI_STATE_LO);
	FUNC2(1);
}