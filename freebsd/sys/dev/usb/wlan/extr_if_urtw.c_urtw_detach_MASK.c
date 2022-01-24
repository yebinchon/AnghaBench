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
struct urtw_softc {int sc_flags; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_snd; int /*<<< orphan*/ * sc_xfer; int /*<<< orphan*/  sc_rx_inactive; int /*<<< orphan*/  sc_rx_active; int /*<<< orphan*/  sc_tx_pending; int /*<<< orphan*/  sc_tx_inactive; int /*<<< orphan*/  sc_tx_active; int /*<<< orphan*/  sc_watchdog_ch; int /*<<< orphan*/  sc_led_ch; int /*<<< orphan*/  sc_led_task; int /*<<< orphan*/  sc_updateslot_task; struct ieee80211com sc_ic; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int URTW_8187B_N_XFERS ; 
 unsigned int URTW_8187L_N_XFERS ; 
 int URTW_DETACHED ; 
 int /*<<< orphan*/  FUNC1 (struct urtw_softc*) ; 
 int URTW_RTL8187B ; 
 int /*<<< orphan*/  FUNC2 (struct urtw_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct urtw_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211com*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct urtw_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct urtw_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct urtw_softc*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct urtw_softc *sc = FUNC4(dev);
	struct ieee80211com *ic = &sc->sc_ic;
	unsigned int x;
	unsigned int n_xfers;

	/* Prevent further ioctls */
	FUNC1(sc);
	sc->sc_flags |= URTW_DETACHED;
	FUNC11(sc);
	FUNC2(sc);

	FUNC5(ic, &sc->sc_updateslot_task);
	FUNC5(ic, &sc->sc_led_task);

	FUNC12(&sc->sc_led_ch);
	FUNC3(&sc->sc_watchdog_ch);

	n_xfers = (sc->sc_flags & URTW_RTL8187B) ?
	    URTW_8187B_N_XFERS : URTW_8187L_N_XFERS;

	/* prevent further allocations from RX/TX data lists */
	FUNC1(sc);
	FUNC0(&sc->sc_tx_active);
	FUNC0(&sc->sc_tx_inactive);
	FUNC0(&sc->sc_tx_pending);

	FUNC0(&sc->sc_rx_active);
	FUNC0(&sc->sc_rx_inactive);
	FUNC2(sc);

	/* drain USB transfers */
	for (x = 0; x != n_xfers; x++)
		FUNC13(sc->sc_xfer[x]);

	/* free data buffers */
	FUNC1(sc);
	FUNC10(sc);
	FUNC9(sc);
	FUNC2(sc);

	/* free USB transfers and some data buffers */
	FUNC14(sc->sc_xfer, n_xfers);

	FUNC6(ic);
	FUNC7(&sc->sc_snd);
	FUNC8(&sc->sc_mtx);
	return (0);
}