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
struct bwn_softc {int /*<<< orphan*/  sc_snd; int /*<<< orphan*/  sc_mem_res; int /*<<< orphan*/  sc_mem_rid; int /*<<< orphan*/  sc_tq; int /*<<< orphan*/  sc_watchdog_ch; int /*<<< orphan*/  sc_task_ch; int /*<<< orphan*/  sc_rfswitch_ch; int /*<<< orphan*/  sc_led_blink_ch; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_flags; struct ieee80211com sc_ic; struct bwn_mac* sc_curmac; } ;
struct bwn_mac {int /*<<< orphan*/  mac_res_irq; int /*<<< orphan*/  mac_rid_irq; int /*<<< orphan*/ * mac_intrhand; int /*<<< orphan*/  mac_intrtask; int /*<<< orphan*/  mac_txpower; int /*<<< orphan*/  mac_hwreset; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BWN_FLAG_INVALID ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_softc*) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC7 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC8 (struct bwn_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC10 (struct bwn_softc*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct bwn_softc* FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ieee80211com*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC19(device_t dev)
{
	struct bwn_softc *sc = FUNC12(dev);
	struct bwn_mac *mac = sc->sc_curmac;
	struct ieee80211com *ic = &sc->sc_ic;

	sc->sc_flags |= BWN_FLAG_INVALID;

	if (FUNC13(sc->sc_dev)) {
		FUNC0(sc);
		FUNC10(sc);
		FUNC2(sc);
		FUNC6(mac);
		FUNC11(&sc->sc_led_blink_ch);
		FUNC11(&sc->sc_rfswitch_ch);
		FUNC11(&sc->sc_task_ch);
		FUNC11(&sc->sc_watchdog_ch);
		FUNC7(mac);
		FUNC14(ic, &mac->mac_hwreset);
		FUNC14(ic, &mac->mac_txpower);
		FUNC15(ic);
	}
	FUNC17(sc->sc_tq, &mac->mac_intrtask);
	FUNC18(sc->sc_tq);

	if (mac->mac_intrhand != NULL) {
		FUNC5(dev, mac->mac_res_irq, mac->mac_intrhand);
		mac->mac_intrhand = NULL;
	}

	FUNC3(dev);
	FUNC4(dev, SYS_RES_MEMORY, sc->sc_mem_rid,
	    sc->sc_mem_res);
	FUNC4(dev, SYS_RES_IRQ, mac->mac_rid_irq,
	    mac->mac_res_irq);
	FUNC16(&sc->sc_snd);
	FUNC9(mac);
	FUNC1(sc);

	FUNC8(sc);

	return (0);
}