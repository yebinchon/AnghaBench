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
struct bwi_softc {int dummy; } ;
struct bwi_regwin {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWI_IMSTATE ; 
 int BWI_IMSTATE_INBAND_ERR ; 
 int BWI_IMSTATE_TIMEOUT ; 
 int /*<<< orphan*/  BWI_STATE_HI ; 
 int BWI_STATE_HI_SERROR ; 
 int /*<<< orphan*/  BWI_STATE_LO ; 
 int BWI_STATE_LO_CLOCK ; 
 int /*<<< orphan*/  BWI_STATE_LO_FLAGS_MASK ; 
 int BWI_STATE_LO_GATED_CLOCK ; 
 int BWI_STATE_LO_RESET ; 
 int FUNC0 (struct bwi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bwi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bwi_softc*,struct bwi_regwin*,int) ; 

void
FUNC5(struct bwi_softc *sc, struct bwi_regwin *rw, uint32_t flags)
{
	uint32_t state_lo, state_hi, imstate;

	FUNC4(sc, rw, flags);

	/* Reset regwin with gated clock */
	state_lo = BWI_STATE_LO_RESET |
		   BWI_STATE_LO_CLOCK |
		   BWI_STATE_LO_GATED_CLOCK |
		   FUNC3(flags, BWI_STATE_LO_FLAGS_MASK);
	FUNC1(sc, BWI_STATE_LO, state_lo);

	/* Flush pending bus write */
	FUNC0(sc, BWI_STATE_LO);
	FUNC2(1);

	state_hi = FUNC0(sc, BWI_STATE_HI);
	if (state_hi & BWI_STATE_HI_SERROR)
		FUNC1(sc, BWI_STATE_HI, 0);

	imstate = FUNC0(sc, BWI_IMSTATE);
	if (imstate & (BWI_IMSTATE_INBAND_ERR | BWI_IMSTATE_TIMEOUT)) {
		imstate &= ~(BWI_IMSTATE_INBAND_ERR | BWI_IMSTATE_TIMEOUT);
		FUNC1(sc, BWI_IMSTATE, imstate);
	}

	/* Enable regwin with gated clock */
	state_lo = BWI_STATE_LO_CLOCK |
		   BWI_STATE_LO_GATED_CLOCK |
		   FUNC3(flags, BWI_STATE_LO_FLAGS_MASK);
	FUNC1(sc, BWI_STATE_LO, state_lo);

	/* Flush pending bus write */
	FUNC0(sc, BWI_STATE_LO);
	FUNC2(1);

	/* Enable regwin with normal clock */
	state_lo = BWI_STATE_LO_CLOCK |
		   FUNC3(flags, BWI_STATE_LO_FLAGS_MASK);
	FUNC1(sc, BWI_STATE_LO, state_lo);

	/* Flush pending bus write */
	FUNC0(sc, BWI_STATE_LO);
	FUNC2(1);
}