#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ stge_tx_cnt; } ;
struct stge_softc {int /*<<< orphan*/  sc_tick_ch; TYPE_1__ sc_cdata; int /*<<< orphan*/  sc_miibus; } ;
struct mii_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stge_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct stge_softc*) ; 
 struct mii_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC3 (struct mii_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct stge_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct stge_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct stge_softc*) ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
	struct stge_softc *sc;
	struct mii_data *mii;

	sc = (struct stge_softc *)arg;

	FUNC0(sc);

	mii = FUNC2(sc->sc_miibus);
	FUNC3(mii);

	/* Update statistics counters. */
	FUNC4(sc);

	/*
	 * Relcaim any pending Tx descriptors to release mbufs in a
	 * timely manner as we don't generate Tx completion interrupts
	 * for every frame. This limits the delay to a maximum of one
	 * second.
	 */
	if (sc->sc_cdata.stge_tx_cnt != 0)
		FUNC5(sc);

	FUNC6(sc);

	FUNC1(&sc->sc_tick_ch, hz, stge_tick, sc);
}