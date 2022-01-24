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
struct TYPE_4__ {int /*<<< orphan*/  wr_ihdr; } ;
struct TYPE_3__ {int /*<<< orphan*/  wt_ihdr; } ;
struct ieee80211com {int ic_caps; int /*<<< orphan*/  ic_transmit; int /*<<< orphan*/  ic_parent; int /*<<< orphan*/  ic_vap_delete; int /*<<< orphan*/  ic_vap_create; int /*<<< orphan*/  ic_set_channel; int /*<<< orphan*/  (* ic_getradiocaps ) (struct ieee80211com*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  ic_scan_end; int /*<<< orphan*/  ic_scan_start; int /*<<< orphan*/  ic_update_promisc; int /*<<< orphan*/  ic_updateslot; int /*<<< orphan*/  ic_raw_xmit; int /*<<< orphan*/  ic_channels; int /*<<< orphan*/  ic_nchans; int /*<<< orphan*/  ic_phytype; int /*<<< orphan*/  ic_opmode; int /*<<< orphan*/  ic_name; struct rt2560_softc* ic_softc; int /*<<< orphan*/  ic_macaddr; } ;
struct rt2560_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  txq; int /*<<< orphan*/  atimq; int /*<<< orphan*/  prioq; int /*<<< orphan*/  bcnq; int /*<<< orphan*/  rx_ant; int /*<<< orphan*/  tx_ant; int /*<<< orphan*/  sc_debug; TYPE_2__ sc_rxtap; TYPE_1__ sc_txtap; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  rxq; int /*<<< orphan*/  rf_rev; int /*<<< orphan*/  asic_rev; int /*<<< orphan*/  sc_snd; int /*<<< orphan*/  watchdog_ch; struct ieee80211com sc_ic; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RW ; 
 int ENXIO ; 
 int /*<<< orphan*/  IEEE80211_CHAN_MAX ; 
 int IEEE80211_C_AHDEMO ; 
 int IEEE80211_C_BGSCAN ; 
 int IEEE80211_C_HOSTAP ; 
 int IEEE80211_C_IBSS ; 
 int IEEE80211_C_MBSS ; 
 int IEEE80211_C_MONITOR ; 
 int IEEE80211_C_SHPREAMBLE ; 
 int IEEE80211_C_SHSLOT ; 
 int IEEE80211_C_STA ; 
 int IEEE80211_C_TXFRAG ; 
 int IEEE80211_C_WDS ; 
 int IEEE80211_C_WPA ; 
 int /*<<< orphan*/  IEEE80211_M_STA ; 
 int /*<<< orphan*/  IEEE80211_T_OFDM ; 
 int MTX_DEF ; 
 int /*<<< orphan*/  MTX_NETWORK_LOCK ; 
 int MTX_RECURSE ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct rt2560_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT2560_ATIM_RING_COUNT ; 
 int /*<<< orphan*/  RT2560_BEACON_RING_COUNT ; 
 int /*<<< orphan*/  RT2560_CSR0 ; 
 int /*<<< orphan*/  RT2560_PRIO_RING_COUNT ; 
 int /*<<< orphan*/  RT2560_RX_RADIOTAP_PRESENT ; 
 int /*<<< orphan*/  RT2560_RX_RING_COUNT ; 
 int /*<<< orphan*/  RT2560_TX_RADIOTAP_PRESENT ; 
 int /*<<< orphan*/  RT2560_TX_RING_COUNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct rt2560_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211com*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifqmaxlen ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC15 (struct rt2560_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct rt2560_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct rt2560_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct rt2560_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct ieee80211com*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rt2560_parent ; 
 int /*<<< orphan*/  rt2560_raw_xmit ; 
 int /*<<< orphan*/  FUNC21 (struct rt2560_softc*) ; 
 int /*<<< orphan*/  rt2560_scan_end ; 
 int /*<<< orphan*/  rt2560_scan_start ; 
 int /*<<< orphan*/  rt2560_set_channel ; 
 int /*<<< orphan*/  rt2560_transmit ; 
 int /*<<< orphan*/  rt2560_update_promisc ; 
 int /*<<< orphan*/  rt2560_update_slot ; 
 int /*<<< orphan*/  rt2560_vap_create ; 
 int /*<<< orphan*/  rt2560_vap_delete ; 

int
FUNC22(device_t dev, int id)
{
	struct rt2560_softc *sc = FUNC5(dev);
	struct ieee80211com *ic = &sc->sc_ic;
	int error;

	sc->sc_dev = dev;

	FUNC14(&sc->sc_mtx, FUNC4(dev), MTX_NETWORK_LOCK,
	    MTX_DEF | MTX_RECURSE);

	FUNC3(&sc->watchdog_ch, &sc->sc_mtx, 0);
	FUNC12(&sc->sc_snd, ifqmaxlen);

	/* retrieve RT2560 rev. no */
	sc->asic_rev = FUNC0(sc, RT2560_CSR0);

	/* retrieve RF rev. no and various other things from EEPROM */
	FUNC21(sc);

	FUNC8(dev, "MAC/BBP RT2560 (rev 0x%02x), RF %s\n",
	    sc->asic_rev, FUNC19(sc->rf_rev));

	/*
	 * Allocate Tx and Rx rings.
	 */
	error = FUNC16(sc, &sc->txq, RT2560_TX_RING_COUNT);
	if (error != 0) {
		FUNC8(sc->sc_dev, "could not allocate Tx ring\n");
		goto fail1;
	}

	error = FUNC16(sc, &sc->atimq, RT2560_ATIM_RING_COUNT);
	if (error != 0) {
		FUNC8(sc->sc_dev, "could not allocate ATIM ring\n");
		goto fail2;
	}

	error = FUNC16(sc, &sc->prioq, RT2560_PRIO_RING_COUNT);
	if (error != 0) {
		FUNC8(sc->sc_dev, "could not allocate Prio ring\n");
		goto fail3;
	}

	error = FUNC16(sc, &sc->bcnq, RT2560_BEACON_RING_COUNT);
	if (error != 0) {
		FUNC8(sc->sc_dev, "could not allocate Beacon ring\n");
		goto fail4;
	}

	error = FUNC15(sc, &sc->rxq, RT2560_RX_RING_COUNT);
	if (error != 0) {
		FUNC8(sc->sc_dev, "could not allocate Rx ring\n");
		goto fail5;
	}

	/* retrieve MAC address */
	FUNC18(sc, ic->ic_macaddr);

	ic->ic_softc = sc;
	ic->ic_name = FUNC4(dev);
	ic->ic_opmode = IEEE80211_M_STA;
	ic->ic_phytype = IEEE80211_T_OFDM; /* not only, but not used */

	/* set device capabilities */
	ic->ic_caps =
		  IEEE80211_C_STA		/* station mode */
		| IEEE80211_C_IBSS		/* ibss, nee adhoc, mode */
		| IEEE80211_C_HOSTAP		/* hostap mode */
		| IEEE80211_C_MONITOR		/* monitor mode */
		| IEEE80211_C_AHDEMO		/* adhoc demo mode */
		| IEEE80211_C_WDS		/* 4-address traffic works */
		| IEEE80211_C_MBSS		/* mesh point link mode */
		| IEEE80211_C_SHPREAMBLE	/* short preamble supported */
		| IEEE80211_C_SHSLOT		/* short slot time supported */
		| IEEE80211_C_WPA		/* capable of WPA1+WPA2 */
		| IEEE80211_C_BGSCAN		/* capable of bg scanning */
#ifdef notyet
		| IEEE80211_C_TXFRAG		/* handle tx frags */
#endif
		;

	FUNC20(ic, IEEE80211_CHAN_MAX, &ic->ic_nchans,
	    ic->ic_channels);

	FUNC10(ic);
	ic->ic_raw_xmit = rt2560_raw_xmit;
	ic->ic_updateslot = rt2560_update_slot;
	ic->ic_update_promisc = rt2560_update_promisc;
	ic->ic_scan_start = rt2560_scan_start;
	ic->ic_scan_end = rt2560_scan_end;
	ic->ic_getradiocaps = rt2560_getradiocaps;
	ic->ic_set_channel = rt2560_set_channel;

	ic->ic_vap_create = rt2560_vap_create;
	ic->ic_vap_delete = rt2560_vap_delete;
	ic->ic_parent = rt2560_parent;
	ic->ic_transmit = rt2560_transmit;

	FUNC11(ic,
	    &sc->sc_txtap.wt_ihdr, sizeof(sc->sc_txtap),
		RT2560_TX_RADIOTAP_PRESENT,
	    &sc->sc_rxtap.wr_ihdr, sizeof(sc->sc_rxtap),
		RT2560_RX_RADIOTAP_PRESENT);

	/*
	 * Add a few sysctl knobs.
	 */
#ifdef RAL_DEBUG
	SYSCTL_ADD_INT(device_get_sysctl_ctx(dev),
	    SYSCTL_CHILDREN(device_get_sysctl_tree(dev)), OID_AUTO,
	    "debug", CTLFLAG_RW, &sc->sc_debug, 0, "debug msgs");
#endif
	FUNC1(FUNC6(dev),
	    FUNC2(FUNC7(dev)), OID_AUTO,
	    "txantenna", CTLFLAG_RW, &sc->tx_ant, 0, "tx antenna (0=auto)");

	FUNC1(FUNC6(dev),
	    FUNC2(FUNC7(dev)), OID_AUTO,
	    "rxantenna", CTLFLAG_RW, &sc->rx_ant, 0, "rx antenna (0=auto)");

	if (bootverbose)
		FUNC9(ic);

	return 0;

fail5:	FUNC17(sc, &sc->bcnq);
fail4:	FUNC17(sc, &sc->prioq);
fail3:	FUNC17(sc, &sc->atimq);
fail2:	FUNC17(sc, &sc->txq);
fail1:	FUNC13(&sc->sc_mtx);

	return ENXIO;
}