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
typedef  int u_int32_t ;
struct ath_softc {int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_ah; scalar_t__ sc_invalid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH_RESET_NOLOSS ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,void**,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void
FUNC4(void *arg, int pending)
{
	struct ath_softc *sc = arg;
	u_int32_t *state;
	u_int32_t len;
	void *sp;

	if (sc->sc_invalid)
		return;

	FUNC3(sc->sc_dev, "hardware error; resetting\n");
	/*
	 * Fatal errors are unrecoverable.  Typically these
	 * are caused by DMA errors.  Collect h/w state from
	 * the hal so we can diagnose what's going on.
	 */
	if (FUNC1(sc->sc_ah, &sp, &len)) {
		FUNC0(len >= 6*sizeof(u_int32_t), ("len %u bytes", len));
		state = sp;
		FUNC3(sc->sc_dev,
		    "0x%08x 0x%08x 0x%08x, 0x%08x 0x%08x 0x%08x\n", state[0],
		    state[1] , state[2], state[3], state[4], state[5]);
	}
	FUNC2(sc, ATH_RESET_NOLOSS);
}