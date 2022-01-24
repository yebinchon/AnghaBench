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
struct ieee80211com {int dummy; } ;
struct uath_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_snd; int /*<<< orphan*/ * sc_xfer; int /*<<< orphan*/  sc_cmd; int /*<<< orphan*/  watchdog_ch; int /*<<< orphan*/  stat_ch; int /*<<< orphan*/  sc_cmd_inactive; int /*<<< orphan*/  sc_cmd_waiting; int /*<<< orphan*/  sc_cmd_pending; int /*<<< orphan*/  sc_cmd_active; int /*<<< orphan*/  sc_tx_pending; int /*<<< orphan*/  sc_tx_inactive; int /*<<< orphan*/  sc_tx_active; int /*<<< orphan*/  sc_rx_inactive; int /*<<< orphan*/  sc_rx_active; int /*<<< orphan*/  sc_flags; struct ieee80211com sc_ic; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UATH_FLAG_INVALID ; 
 int /*<<< orphan*/  FUNC1 (struct uath_softc*) ; 
 unsigned int UATH_N_XFERS ; 
 int /*<<< orphan*/  FUNC2 (struct uath_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct uath_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct uath_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct uath_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct uath_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct uath_softc*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	struct uath_softc *sc = FUNC4(dev);
	struct ieee80211com *ic = &sc->sc_ic;
	unsigned int x;

	/*
	 * Prevent further allocations from RX/TX/CMD
	 * data lists and ioctls
	 */
	FUNC1(sc);
	sc->sc_flags |= UATH_FLAG_INVALID;

	FUNC0(&sc->sc_rx_active);
	FUNC0(&sc->sc_rx_inactive);

	FUNC0(&sc->sc_tx_active);
	FUNC0(&sc->sc_tx_inactive);
	FUNC0(&sc->sc_tx_pending);

	FUNC0(&sc->sc_cmd_active);
	FUNC0(&sc->sc_cmd_pending);
	FUNC0(&sc->sc_cmd_waiting);
	FUNC0(&sc->sc_cmd_inactive);

	FUNC11(sc);
	FUNC2(sc);

	FUNC3(&sc->stat_ch);
	FUNC3(&sc->watchdog_ch);

	/* drain USB transfers */
	for (x = 0; x != UATH_N_XFERS; x++)
		FUNC12(sc->sc_xfer[x]);

	/* free data buffers */
	FUNC1(sc);
	FUNC9(sc);
	FUNC10(sc);
	FUNC8(sc, sc->sc_cmd);
	FUNC2(sc);

	/* free USB transfers and some data buffers */
	FUNC13(sc->sc_xfer, UATH_N_XFERS);

	FUNC5(ic);
	FUNC6(&sc->sc_snd);
	FUNC7(&sc->sc_mtx);
	return (0);
}