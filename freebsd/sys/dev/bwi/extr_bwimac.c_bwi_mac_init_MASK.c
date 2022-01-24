#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_3__ {int rw_rev; scalar_t__ rw_type; } ;
struct bwi_softc {int sc_pwron_delay; int (* sc_init_tx_ring ) (struct bwi_softc*,int) ;int (* sc_init_rx_ring ) (struct bwi_softc*) ;int (* sc_init_txstats ) (struct bwi_softc*) ;int /*<<< orphan*/  sc_dev; TYPE_1__ sc_bus_regwin; } ;
struct TYPE_4__ {int /*<<< orphan*/  rf_ant_mode; } ;
struct bwi_mac {int mac_rev; int mac_flags; TYPE_2__ mac_rf; int /*<<< orphan*/  mac_regwin; int /*<<< orphan*/  mac_phy; struct bwi_softc* mac_sc; } ;

/* Variables and functions */
 int BWI_BBP_ATTEN ; 
 int /*<<< orphan*/  BWI_COMM_MOBJ ; 
 int BWI_COMM_MOBJ_MACREV ; 
 int /*<<< orphan*/  BWI_CONF_LO ; 
 int /*<<< orphan*/  BWI_CONF_LO_REQTO ; 
 int /*<<< orphan*/  BWI_CONF_LO_REQTO_MASK ; 
 int /*<<< orphan*/  BWI_CONF_LO_SERVTO ; 
 int /*<<< orphan*/  BWI_CONF_LO_SERVTO_MASK ; 
 int BWI_INTR_TIMER1 ; 
 int BWI_MAC_F_HAS_TXSTATS ; 
 int BWI_MAC_F_INITED ; 
 int BWI_MAC_INTR_STATUS ; 
 int BWI_MAC_POWERUP_DELAY ; 
 int BWI_MAC_STATUS ; 
 int BWI_MAC_STATUS_IHREN ; 
 int BWI_MAC_STATUS_UCODE_JUMP0 ; 
 scalar_t__ BWI_REGWIN_T_BUSPCIE ; 
 int /*<<< orphan*/  BWI_STATE_LO ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int BWI_TXRX_NRING ; 
 int BWI_TXRX_RX_INTRS ; 
 int BWI_TXRX_TX_INTRS ; 
 int BWI_TX_NRING ; 
 int /*<<< orphan*/  FUNC2 (struct bwi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bwi_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bwi_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bwi_mac*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct bwi_softc*,struct bwi_mac*) ; 
 int /*<<< orphan*/  FUNC8 (struct bwi_mac*) ; 
 int FUNC9 (struct bwi_mac*) ; 
 int FUNC10 (struct bwi_mac*) ; 
 int FUNC11 (struct bwi_mac*) ; 
 int /*<<< orphan*/  FUNC12 (struct bwi_mac*) ; 
 int /*<<< orphan*/  FUNC13 (struct bwi_mac*) ; 
 int /*<<< orphan*/  FUNC14 (struct bwi_mac*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct bwi_mac*) ; 
 int FUNC16 (struct bwi_mac*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct bwi_mac*) ; 
 int /*<<< orphan*/  FUNC19 (struct bwi_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC21 (struct bwi_mac*) ; 
 int /*<<< orphan*/  FUNC22 (struct bwi_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC24 (struct bwi_softc*,int) ; 
 int FUNC25 (struct bwi_softc*) ; 
 int FUNC26 (struct bwi_softc*) ; 

int
FUNC27(struct bwi_mac *mac)
{
	struct bwi_softc *sc = mac->mac_sc;
	int error, i;

	/* Clear MAC/PHY/RF states */
	FUNC15(mac);
	FUNC20(&mac->mac_rf);
	FUNC17(&mac->mac_phy);

	/* Enable MAC and linked it to PHY */
	if (!FUNC19(sc, &mac->mac_regwin))
		FUNC14(mac, 1);

	/* Initialize backplane */
	error = FUNC7(sc, mac);
	if (error)
		return error;

	/* do timeout fixup */
	if (sc->sc_bus_regwin.rw_rev <= 5 &&
	    sc->sc_bus_regwin.rw_type != BWI_REGWIN_T_BUSPCIE) {
		FUNC2(sc, BWI_CONF_LO,
		FUNC6(BWI_CONF_LO_SERVTO, BWI_CONF_LO_SERVTO_MASK) |
		FUNC6(BWI_CONF_LO_REQTO, BWI_CONF_LO_REQTO_MASK));
	}

	/* Calibrate PHY */
	error = FUNC16(mac);
	if (error) {
		FUNC23(sc->sc_dev, "PHY calibrate failed\n");
		return error;
	}

	/* Prepare to initialize firmware */
	FUNC4(sc, BWI_MAC_STATUS,
		    BWI_MAC_STATUS_UCODE_JUMP0 |
		    BWI_MAC_STATUS_IHREN);

	/*
	 * Load and initialize firmwares
	 */
	error = FUNC10(mac);
	if (error)
		return error;

	error = FUNC11(mac);
	if (error)
		return error;

	error = FUNC9(mac);
	if (error)
		return error;

	/*
	 * Turn on RF
	 */
	FUNC21(mac);

	/* TODO: LED, hardware rf enabled is only related to LED setting */

	/*
	 * Initialize PHY
	 */
	FUNC3(sc, BWI_BBP_ATTEN, 0);
	FUNC18(mac);

	/* TODO: interference mitigation */

	/*
	 * Setup antenna mode
	 */
	FUNC22(mac, mac->mac_rf.rf_ant_mode);

	/*
	 * Initialize operation mode (RX configuration)
	 */
	FUNC13(mac);

	/* set up Beacon interval */
	if (mac->mac_rev < 3) {
		FUNC3(sc, 0x60e, 0);
		FUNC3(sc, 0x610, 0x8000);
		FUNC3(sc, 0x604, 0);
		FUNC3(sc, 0x606, 0x200);
	} else {
		FUNC4(sc, 0x188, 0x80000000);
		FUNC4(sc, 0x18c, 0x2000000);
	}

	/*
	 * Initialize TX/RX interrupts' mask
	 */
	FUNC4(sc, BWI_MAC_INTR_STATUS, BWI_INTR_TIMER1);
	for (i = 0; i < BWI_TXRX_NRING; ++i) {
		uint32_t intrs;

		if (FUNC1(i))
			intrs = BWI_TXRX_RX_INTRS;
		else
			intrs = BWI_TXRX_TX_INTRS;
		FUNC4(sc, FUNC0(i), intrs);
	}

	/* allow the MAC to control the PHY clock (dynamic on/off) */
	FUNC2(sc, BWI_STATE_LO, 0x100000);

	/* Setup MAC power up delay */
	FUNC3(sc, BWI_MAC_POWERUP_DELAY, sc->sc_pwron_delay);

	/* Set MAC regwin revision */
	FUNC5(mac, BWI_COMM_MOBJ, BWI_COMM_MOBJ_MACREV, mac->mac_rev);

	/*
	 * Initialize host flags
	 */
	FUNC12(mac);

	/*
	 * Initialize BSS parameters
	 */
	FUNC8(mac);

	/*
	 * Initialize TX rings
	 */
	for (i = 0; i < BWI_TX_NRING; ++i) {
		error = sc->sc_init_tx_ring(sc, i);
		if (error) {
			FUNC23(sc->sc_dev,
				  "can't initialize %dth TX ring\n", i);
			return error;
		}
	}

	/*
	 * Initialize RX ring
	 */
	error = sc->sc_init_rx_ring(sc);
	if (error) {
		FUNC23(sc->sc_dev, "can't initialize RX ring\n");
		return error;
	}

	/*
	 * Initialize TX stats if the current MAC uses that
	 */
	if (mac->mac_flags & BWI_MAC_F_HAS_TXSTATS) {
		error = sc->sc_init_txstats(sc);
		if (error) {
			FUNC23(sc->sc_dev,
				  "can't initialize TX stats ring\n");
			return error;
		}
	}

	/* update PRETBTT */
	FUNC3(sc, 0x612, 0x50);	/* Force Pre-TBTT to 80? */
	FUNC5(mac, BWI_COMM_MOBJ, 0x416, 0x50);
	FUNC5(mac, BWI_COMM_MOBJ, 0x414, 0x1f4);

	mac->mac_flags |= BWI_MAC_F_INITED;
	return 0;
}