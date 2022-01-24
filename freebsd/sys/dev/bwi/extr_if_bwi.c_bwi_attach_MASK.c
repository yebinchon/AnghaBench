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
struct ieee80211com {int ic_caps; int ic_headroom; int /*<<< orphan*/  ic_curchan; int /*<<< orphan*/  ic_parent; int /*<<< orphan*/  ic_transmit; int /*<<< orphan*/  ic_set_channel; int /*<<< orphan*/  (* ic_getradiocaps ) (struct ieee80211com*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  ic_scan_end; int /*<<< orphan*/  ic_scan_start; int /*<<< orphan*/  ic_updateslot; int /*<<< orphan*/  ic_raw_xmit; int /*<<< orphan*/  ic_vap_delete; int /*<<< orphan*/  ic_vap_create; int /*<<< orphan*/  ic_opmode; int /*<<< orphan*/  ic_name; int /*<<< orphan*/  ic_channels; int /*<<< orphan*/  ic_nchans; struct bwi_softc* ic_softc; int /*<<< orphan*/  ic_macaddr; int /*<<< orphan*/  ic_phytype; } ;
struct bwi_txbuf_hdr {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  wr_ihdr; } ;
struct TYPE_3__ {int /*<<< orphan*/  wt_ihdr; } ;
struct bwi_softc {int sc_fw_version; int sc_led_idle; int sc_led_blink; int sc_txpwr_calib; int sc_nmac; int /*<<< orphan*/  sc_debug; TYPE_2__ sc_rx_th; TYPE_1__ sc_tx_th; int /*<<< orphan*/  sc_rates; int /*<<< orphan*/  sc_locale; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_watchdog_timer; struct bwi_mac* sc_mac; int /*<<< orphan*/  sc_com_regwin; scalar_t__ sc_led_ticks; int /*<<< orphan*/  sc_snd; int /*<<< orphan*/  sc_calib_ch; int /*<<< orphan*/  sc_restart_task; int /*<<< orphan*/  sc_tq; int /*<<< orphan*/  sc_dev; struct ieee80211com sc_ic; } ;
struct bwi_regwin {int dummy; } ;
struct bwi_phy {scalar_t__ phy_mode; } ;
struct bwi_mac {struct bwi_phy mac_phy; struct bwi_regwin mac_regwin; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BWI_CLOCK_MODE_FAST ; 
 int /*<<< orphan*/  BWI_DBG_ATTACH ; 
 int BWI_FW_VERSION3 ; 
 int /*<<< orphan*/  FUNC0 (struct bwi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bwi_softc*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BWI_RX_RADIOTAP_PRESENT ; 
 int /*<<< orphan*/  BWI_SPROM_11A_EADDR ; 
 int /*<<< orphan*/  BWI_SPROM_11BG_EADDR ; 
 int /*<<< orphan*/  BWI_SPROM_CARD_INFO ; 
 int /*<<< orphan*/  BWI_SPROM_CARD_INFO_LOCALE ; 
 int /*<<< orphan*/  BWI_TX_RADIOTAP_PRESENT ; 
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  CTLFLAG_RW ; 
 int /*<<< orphan*/  FUNC3 (struct bwi_softc*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int /*<<< orphan*/  IEEE80211_CHAN_MAX ; 
 int IEEE80211_C_BGSCAN ; 
 int IEEE80211_C_MONITOR ; 
 int IEEE80211_C_SHPREAMBLE ; 
 int IEEE80211_C_SHSLOT ; 
 int IEEE80211_C_STA ; 
 int IEEE80211_C_WPA ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ IEEE80211_MODE_11A ; 
 scalar_t__ IEEE80211_MODE_11B ; 
 scalar_t__ IEEE80211_MODE_11G ; 
 int /*<<< orphan*/  IEEE80211_M_STA ; 
 int /*<<< orphan*/  IEEE80211_T_DS ; 
 int /*<<< orphan*/  IEEE80211_T_OFDM ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  PI_NET ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bwi_softc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ bootverbose ; 
 int FUNC10 (struct bwi_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct bwi_softc*) ; 
 int FUNC12 (struct bwi_softc*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct bwi_softc*) ; 
 int /*<<< orphan*/  bwi_debug ; 
 int FUNC14 (struct bwi_softc*) ; 
 int /*<<< orphan*/  FUNC15 (struct bwi_softc*) ; 
 int /*<<< orphan*/  FUNC16 (struct bwi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct bwi_softc*) ; 
 int /*<<< orphan*/  FUNC18 (struct ieee80211com*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct bwi_softc*) ; 
 int FUNC20 (struct bwi_mac*) ; 
 int FUNC21 (struct bwi_mac*) ; 
 int /*<<< orphan*/  bwi_parent ; 
 int /*<<< orphan*/  FUNC22 (struct bwi_softc*,int) ; 
 int /*<<< orphan*/  bwi_raw_xmit ; 
 int /*<<< orphan*/  FUNC23 (struct bwi_softc*,int /*<<< orphan*/ ) ; 
 int FUNC24 (struct bwi_softc*,struct bwi_regwin*,struct bwi_regwin**) ; 
 int /*<<< orphan*/  bwi_restart ; 
 int /*<<< orphan*/  bwi_scan_end ; 
 int /*<<< orphan*/  bwi_scan_start ; 
 int /*<<< orphan*/  bwi_set_channel ; 
 int FUNC25 (struct bwi_softc*) ; 
 int FUNC26 (struct bwi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bwi_transmit ; 
 int /*<<< orphan*/  bwi_updateslot ; 
 int /*<<< orphan*/  bwi_vap_create ; 
 int /*<<< orphan*/  bwi_vap_delete ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC32 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC35 (struct ieee80211com*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifqmaxlen ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC38 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 
 scalar_t__ ticks ; 

int
FUNC40(struct bwi_softc *sc)
{
	struct ieee80211com *ic = &sc->sc_ic;
	device_t dev = sc->sc_dev;
	struct bwi_mac *mac;
	struct bwi_phy *phy;
	int i, error;

	FUNC1(sc);

	/*
	 * Initialize taskq and various tasks
	 */
	sc->sc_tq = FUNC38("bwi_taskq", M_NOWAIT | M_ZERO,
		taskqueue_thread_enqueue, &sc->sc_tq);
	FUNC39(&sc->sc_tq, 1, PI_NET, "%s taskq",
		FUNC28(dev));
	FUNC8(&sc->sc_restart_task, 0, bwi_restart, sc);
	FUNC27(&sc->sc_calib_ch, &sc->sc_mtx, 0);
	FUNC36(&sc->sc_snd, ifqmaxlen);

	/*
	 * Initialize sysctl variables
	 */
	sc->sc_fw_version = BWI_FW_VERSION3;
	sc->sc_led_idle = (2350 * hz) / 1000;
	sc->sc_led_ticks = ticks - sc->sc_led_idle;
	sc->sc_led_blink = 1;
	sc->sc_txpwr_calib = 1;
#ifdef BWI_DEBUG
	sc->sc_debug = bwi_debug;
#endif
	FUNC22(sc, 1);

	error = FUNC10(sc);
	if (error)
		goto fail;

	error = FUNC12(sc, BWI_CLOCK_MODE_FAST);
	if (error)
		goto fail;

	if (FUNC2(&sc->sc_com_regwin)) {
		error = FUNC25(sc);
		if (error)
			goto fail;

		error = FUNC26(sc, BWI_CLOCK_MODE_FAST);
		if (error)
			goto fail;

		error = FUNC17(sc);
		if (error)
			goto fail;
	}

	error = FUNC13(sc);
	if (error)
		goto fail;

	FUNC15(sc);

	FUNC19(sc);

	for (i = 0; i < sc->sc_nmac; ++i) {
		struct bwi_regwin *old;

		mac = &sc->sc_mac[i];
		error = FUNC24(sc, &mac->mac_regwin, &old);
		if (error)
			goto fail;

		error = FUNC21(mac);
		if (error)
			goto fail;

		error = FUNC24(sc, old, NULL);
		if (error)
			goto fail;
	}

	/*
	 * XXX First MAC is known to exist
	 * TODO2
	 */
	mac = &sc->sc_mac[0];
	phy = &mac->mac_phy;

	FUNC11(sc);

	error = FUNC14(sc);
	if (error)
		goto fail;

	error = FUNC20(mac);
	if (error)
		goto fail;

	FUNC27(&sc->sc_watchdog_timer, &sc->sc_mtx, 0);

	/*
	 * Setup ratesets, phytype, channels and get MAC address
	 */
	if (phy->phy_mode == IEEE80211_MODE_11B ||
	    phy->phy_mode == IEEE80211_MODE_11G) {
		if (phy->phy_mode == IEEE80211_MODE_11B) {
			ic->ic_phytype = IEEE80211_T_DS;
		} else {
			ic->ic_phytype = IEEE80211_T_OFDM;
		}

		FUNC16(sc, BWI_SPROM_11BG_EADDR, ic->ic_macaddr);
		if (FUNC4(ic->ic_macaddr)) {
			FUNC16(sc, BWI_SPROM_11A_EADDR, ic->ic_macaddr);
			if (FUNC4(ic->ic_macaddr)) {
				FUNC31(dev,
				    "invalid MAC address: %6D\n",
				    ic->ic_macaddr, ":");
			}
		}
	} else if (phy->phy_mode == IEEE80211_MODE_11A) {
		/* TODO:11A */
		error = ENXIO;
		goto fail;
	} else {
		FUNC37("unknown phymode %d\n", phy->phy_mode);
	}

	/* Get locale */
	sc->sc_locale = FUNC9(FUNC23(sc, BWI_SPROM_CARD_INFO),
				   BWI_SPROM_CARD_INFO_LOCALE);
	FUNC3(sc, BWI_DBG_ATTACH, "locale: %d\n", sc->sc_locale);
	/* XXX use locale */

	ic->ic_softc = sc;

	FUNC18(ic, IEEE80211_CHAN_MAX, &ic->ic_nchans,
	    ic->ic_channels);

	ic->ic_name = FUNC28(dev);
	ic->ic_caps = IEEE80211_C_STA |
		      IEEE80211_C_SHSLOT |
		      IEEE80211_C_SHPREAMBLE |
		      IEEE80211_C_WPA |
		      IEEE80211_C_BGSCAN |
		      IEEE80211_C_MONITOR;
	ic->ic_opmode = IEEE80211_M_STA;
	FUNC34(ic);

	ic->ic_headroom = sizeof(struct bwi_txbuf_hdr);

	/* override default methods */
	ic->ic_vap_create = bwi_vap_create;
	ic->ic_vap_delete = bwi_vap_delete;
	ic->ic_raw_xmit = bwi_raw_xmit;
	ic->ic_updateslot = bwi_updateslot;
	ic->ic_scan_start = bwi_scan_start;
	ic->ic_scan_end = bwi_scan_end;
	ic->ic_getradiocaps = bwi_getradiocaps;
	ic->ic_set_channel = bwi_set_channel;
	ic->ic_transmit = bwi_transmit;
	ic->ic_parent = bwi_parent;

	sc->sc_rates = FUNC33(ic->ic_curchan);

	FUNC35(ic,
	    &sc->sc_tx_th.wt_ihdr, sizeof(sc->sc_tx_th),
		BWI_TX_RADIOTAP_PRESENT,
	    &sc->sc_rx_th.wr_ihdr, sizeof(sc->sc_rx_th),
		BWI_RX_RADIOTAP_PRESENT);

	/*
	 * Add sysctl nodes
	 */
	FUNC5(FUNC29(dev),
		        FUNC7(FUNC30(dev)), OID_AUTO,
		        "fw_version", CTLFLAG_RD, &sc->sc_fw_version, 0,
		        "Firmware version");
	FUNC5(FUNC29(dev),
		        FUNC7(FUNC30(dev)), OID_AUTO,
		        "led_idle", CTLFLAG_RW, &sc->sc_led_idle, 0,
		        "# ticks before LED enters idle state");
	FUNC5(FUNC29(dev),
		       FUNC7(FUNC30(dev)), OID_AUTO,
		       "led_blink", CTLFLAG_RW, &sc->sc_led_blink, 0,
		       "Allow LED to blink");
	FUNC5(FUNC29(dev),
		       FUNC7(FUNC30(dev)), OID_AUTO,
		       "txpwr_calib", CTLFLAG_RW, &sc->sc_txpwr_calib, 0,
		       "Enable software TX power calibration");
#ifdef BWI_DEBUG
	SYSCTL_ADD_UINT(device_get_sysctl_ctx(dev),
		        SYSCTL_CHILDREN(device_get_sysctl_tree(dev)), OID_AUTO,
		        "debug", CTLFLAG_RW, &sc->sc_debug, 0, "Debug flags");
#endif
	if (bootverbose)
		FUNC32(ic);

	return (0);
fail:
	FUNC0(sc);
	return (error);
}