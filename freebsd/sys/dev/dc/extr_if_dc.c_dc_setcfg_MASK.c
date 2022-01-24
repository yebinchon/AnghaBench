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
struct dc_softc {scalar_t__ dc_pmode; scalar_t__ dc_type; int dc_link; } ;

/* Variables and functions */
 int FUNC0 (struct dc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DC_10BTCTRL ; 
 int /*<<< orphan*/  FUNC2 (struct dc_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct dc_softc*) ; 
 scalar_t__ FUNC4 (struct dc_softc*) ; 
 scalar_t__ FUNC5 (struct dc_softc*) ; 
 int /*<<< orphan*/  DC_NETCFG ; 
 int DC_NETCFG_FULLDUPLEX ; 
 int DC_NETCFG_HEARTBEAT ; 
 int DC_NETCFG_PCS ; 
 int DC_NETCFG_PORTSEL ; 
 int DC_NETCFG_RX_ON ; 
 int DC_NETCFG_SCRAMBLER ; 
 int DC_NETCFG_SPEEDSEL ; 
 int DC_NETCFG_TX_ON ; 
 scalar_t__ DC_PMODE_MII ; 
 scalar_t__ DC_PMODE_SYM ; 
 int /*<<< orphan*/  DC_PN_GPIO_100TX_LOOP ; 
 int /*<<< orphan*/  FUNC6 (struct dc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DC_PN_GPIO_SPEEDSEL ; 
 int /*<<< orphan*/  DC_PN_NWAY ; 
 int DC_PN_NWAY_DUPLEX ; 
 int DC_PN_NWAY_SPEEDSEL ; 
 int /*<<< orphan*/  FUNC8 (struct dc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DC_SIARESET ; 
 int DC_SIA_RESET ; 
 int DC_TCTL_AUTONEGENBL ; 
 scalar_t__ DC_TYPE_98713 ; 
 int /*<<< orphan*/  DC_WATCHDOG ; 
 int DC_WDOG_CTLWREN ; 
 int DC_WDOG_JABBERDIS ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ IFM_100_TX ; 
 scalar_t__ IFM_10_T ; 
 int IFM_FDX ; 
 int IFM_GMASK ; 
 scalar_t__ IFM_HPNA_1 ; 
 scalar_t__ IFM_NONE ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct dc_softc*) ; 

__attribute__((used)) static void
FUNC12(struct dc_softc *sc, int media)
{
	int restart = 0, watchdogreg;

	if (FUNC10(media) == IFM_NONE)
		return;

	if (FUNC0(sc, DC_NETCFG) & (DC_NETCFG_TX_ON | DC_NETCFG_RX_ON)) {
		restart = 1;
		FUNC2(sc, DC_NETCFG, (DC_NETCFG_TX_ON | DC_NETCFG_RX_ON));
		FUNC11(sc);
	}

	if (FUNC10(media) == IFM_100_TX) {
		FUNC2(sc, DC_NETCFG, DC_NETCFG_SPEEDSEL);
		FUNC8(sc, DC_NETCFG, DC_NETCFG_HEARTBEAT);
		if (sc->dc_pmode == DC_PMODE_MII) {
			if (FUNC4(sc)) {
			/* There's a write enable bit here that reads as 1. */
				watchdogreg = FUNC0(sc, DC_WATCHDOG);
				watchdogreg &= ~DC_WDOG_CTLWREN;
				watchdogreg |= DC_WDOG_JABBERDIS;
				FUNC1(sc, DC_WATCHDOG, watchdogreg);
			} else {
				FUNC8(sc, DC_WATCHDOG, DC_WDOG_JABBERDIS);
			}
			FUNC2(sc, DC_NETCFG, (DC_NETCFG_PCS |
			    DC_NETCFG_PORTSEL | DC_NETCFG_SCRAMBLER));
			if (sc->dc_type == DC_TYPE_98713)
				FUNC8(sc, DC_NETCFG, (DC_NETCFG_PCS |
				    DC_NETCFG_SCRAMBLER));
			if (!FUNC3(sc))
				FUNC8(sc, DC_NETCFG, DC_NETCFG_PORTSEL);
			FUNC2(sc, DC_10BTCTRL, 0xFFFF);
		} else {
			if (FUNC5(sc)) {
				FUNC7(sc, DC_PN_GPIO_SPEEDSEL);
				FUNC7(sc, DC_PN_GPIO_100TX_LOOP);
				FUNC8(sc, DC_PN_NWAY, DC_PN_NWAY_SPEEDSEL);
			}
			FUNC8(sc, DC_NETCFG, DC_NETCFG_PORTSEL);
			FUNC8(sc, DC_NETCFG, DC_NETCFG_PCS);
			FUNC8(sc, DC_NETCFG, DC_NETCFG_SCRAMBLER);
		}
	}

	if (FUNC10(media) == IFM_10_T) {
		FUNC8(sc, DC_NETCFG, DC_NETCFG_SPEEDSEL);
		FUNC2(sc, DC_NETCFG, DC_NETCFG_HEARTBEAT);
		if (sc->dc_pmode == DC_PMODE_MII) {
			/* There's a write enable bit here that reads as 1. */
			if (FUNC4(sc)) {
				watchdogreg = FUNC0(sc, DC_WATCHDOG);
				watchdogreg &= ~DC_WDOG_CTLWREN;
				watchdogreg |= DC_WDOG_JABBERDIS;
				FUNC1(sc, DC_WATCHDOG, watchdogreg);
			} else {
				FUNC8(sc, DC_WATCHDOG, DC_WDOG_JABBERDIS);
			}
			FUNC2(sc, DC_NETCFG, (DC_NETCFG_PCS |
			    DC_NETCFG_PORTSEL | DC_NETCFG_SCRAMBLER));
			if (sc->dc_type == DC_TYPE_98713)
				FUNC8(sc, DC_NETCFG, DC_NETCFG_PCS);
			if (!FUNC3(sc))
				FUNC8(sc, DC_NETCFG, DC_NETCFG_PORTSEL);
			FUNC2(sc, DC_10BTCTRL, 0xFFFF);
		} else {
			if (FUNC5(sc)) {
				FUNC6(sc, DC_PN_GPIO_SPEEDSEL);
				FUNC7(sc, DC_PN_GPIO_100TX_LOOP);
				FUNC2(sc, DC_PN_NWAY, DC_PN_NWAY_SPEEDSEL);
			}
			FUNC2(sc, DC_NETCFG, DC_NETCFG_PORTSEL);
			FUNC2(sc, DC_NETCFG, DC_NETCFG_PCS);
			FUNC2(sc, DC_NETCFG, DC_NETCFG_SCRAMBLER);
			if (FUNC4(sc)) {
				FUNC2(sc, DC_SIARESET, DC_SIA_RESET);
				FUNC2(sc, DC_10BTCTRL, 0xFFFF);
				if ((media & IFM_GMASK) == IFM_FDX)
					FUNC8(sc, DC_10BTCTRL, 0x7F3D);
				else
					FUNC8(sc, DC_10BTCTRL, 0x7F3F);
				FUNC8(sc, DC_SIARESET, DC_SIA_RESET);
				FUNC2(sc, DC_10BTCTRL,
				    DC_TCTL_AUTONEGENBL);
				FUNC9(20000);
			}
		}
	}

	/*
	 * If this is a Davicom DM9102A card with a DM9801 HomePNA
	 * PHY and we want HomePNA mode, set the portsel bit to turn
	 * on the external MII port.
	 */
	if (FUNC3(sc)) {
		if (FUNC10(media) == IFM_HPNA_1) {
			FUNC8(sc, DC_NETCFG, DC_NETCFG_PORTSEL);
			sc->dc_link = 1;
		} else {
			FUNC2(sc, DC_NETCFG, DC_NETCFG_PORTSEL);
		}
	}

	if ((media & IFM_GMASK) == IFM_FDX) {
		FUNC8(sc, DC_NETCFG, DC_NETCFG_FULLDUPLEX);
		if (sc->dc_pmode == DC_PMODE_SYM && FUNC5(sc))
			FUNC8(sc, DC_PN_NWAY, DC_PN_NWAY_DUPLEX);
	} else {
		FUNC2(sc, DC_NETCFG, DC_NETCFG_FULLDUPLEX);
		if (sc->dc_pmode == DC_PMODE_SYM && FUNC5(sc))
			FUNC2(sc, DC_PN_NWAY, DC_PN_NWAY_DUPLEX);
	}

	if (restart)
		FUNC8(sc, DC_NETCFG, DC_NETCFG_TX_ON | DC_NETCFG_RX_ON);
}