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
struct ieee80211com {struct zyd_softc* ic_softc; } ;
struct zyd_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/ * sc_xfer; int /*<<< orphan*/  tx_free; int /*<<< orphan*/  tx_q; int /*<<< orphan*/  sc_flags; struct ieee80211com sc_ic; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ZYD_FLAG_DETACHED ; 
 int /*<<< orphan*/  FUNC1 (struct zyd_softc*) ; 
 unsigned int ZYD_N_TRANSFER ; 
 int /*<<< orphan*/  FUNC2 (struct zyd_softc*) ; 
 struct zyd_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct zyd_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct zyd_softc*) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct zyd_softc *sc = FUNC3(dev);
	struct ieee80211com *ic = &sc->sc_ic;
	unsigned int x;

	/*
	 * Prevent further allocations from RX/TX data
	 * lists and ioctls:
	 */
	FUNC1(sc);
	sc->sc_flags |= ZYD_FLAG_DETACHED;
	FUNC8(sc);
	FUNC0(&sc->tx_q);
	FUNC0(&sc->tx_free);
	FUNC2(sc);

	/* drain USB transfers */
	for (x = 0; x != ZYD_N_TRANSFER; x++)
		FUNC6(sc->sc_xfer[x]);

	/* free TX list, if any */
	FUNC1(sc);
	FUNC9(sc);
	FUNC2(sc);

	/* free USB transfers and some data buffers */
	FUNC7(sc->sc_xfer, ZYD_N_TRANSFER);

	if (ic->ic_softc == sc)
		FUNC4(ic);
	FUNC5(&sc->sc_mtx);

	return (0);
}