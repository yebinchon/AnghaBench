#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct malo_txrec {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  wr_ihdr; } ;
struct TYPE_4__ {int /*<<< orphan*/  wt_ihdr; } ;
struct TYPE_6__ {int /*<<< orphan*/  macaddr; int /*<<< orphan*/ * wcbbase; int /*<<< orphan*/  ul_fw_awakecookie; int /*<<< orphan*/  rxdesc_write; int /*<<< orphan*/  rxdesc_read; int /*<<< orphan*/  wcbbase0; int /*<<< orphan*/  fw_releasenum; int /*<<< orphan*/  num_antenna; int /*<<< orphan*/  regioncode; int /*<<< orphan*/  maxnum_tx_wcb; int /*<<< orphan*/  maxnum_mcaddr; int /*<<< orphan*/  maxnum_wcb; int /*<<< orphan*/  hostinterface; int /*<<< orphan*/  hwversion; } ;
struct ieee80211com {int ic_caps; int ic_headroom; int /*<<< orphan*/  ic_transmit; int /*<<< orphan*/  ic_parent; int /*<<< orphan*/  ic_set_channel; int /*<<< orphan*/  ic_scan_end; int /*<<< orphan*/  ic_scan_start; int /*<<< orphan*/  ic_updateslot; int /*<<< orphan*/  ic_raw_xmit; int /*<<< orphan*/  ic_vap_delete; int /*<<< orphan*/  ic_vap_create; int /*<<< orphan*/  ic_macaddr; int /*<<< orphan*/  ic_opmode; int /*<<< orphan*/  ic_phytype; int /*<<< orphan*/  ic_name; struct malo_softc* ic_softc; } ;
struct malo_softc {int malo_txantenna; int malo_rxantenna; int malo_invalid; TYPE_2__ malo_rx_th; TYPE_1__ malo_tx_th; TYPE_3__ malo_hwspecs; int /*<<< orphan*/  malo_dev; int /*<<< orphan*/  malo_txtask; int /*<<< orphan*/  malo_rxtask; int /*<<< orphan*/  malo_tq; struct malo_hal* malo_mh; int /*<<< orphan*/  malo_dmat; int /*<<< orphan*/  malo_io1t; int /*<<< orphan*/  malo_io1h; int /*<<< orphan*/  malo_snd; int /*<<< orphan*/  malo_mtx; int /*<<< orphan*/  malo_watchdog_timer; struct ieee80211com malo_ic; } ;
struct malo_hal {int dummy; } ;
struct ieee80211_frame {int dummy; } ;
typedef  int /*<<< orphan*/  bands ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct malo_softc*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IEEE80211_C_BGSCAN ; 
 int IEEE80211_C_MONITOR ; 
 int IEEE80211_C_SHPREAMBLE ; 
 int IEEE80211_C_SHSLOT ; 
 int IEEE80211_C_STA ; 
 int IEEE80211_C_TXPMGT ; 
 int IEEE80211_C_WPA ; 
 int /*<<< orphan*/  IEEE80211_MODE_11B ; 
 int /*<<< orphan*/  IEEE80211_MODE_11G ; 
 int IEEE80211_MODE_BYTES ; 
 int /*<<< orphan*/  IEEE80211_M_STA ; 
 int /*<<< orphan*/  IEEE80211_T_OFDM ; 
 int /*<<< orphan*/  MALO_DEBUG_FW ; 
 int /*<<< orphan*/  FUNC2 (struct malo_softc*) ; 
 int /*<<< orphan*/  MALO_RX_RADIOTAP_PRESENT ; 
 int /*<<< orphan*/  MALO_TX_RADIOTAP_PRESENT ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  PI_NET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct malo_softc*) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211com*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211com*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifqmaxlen ; 
 int /*<<< orphan*/  FUNC11 (struct malo_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct malo_softc*) ; 
 int FUNC13 (struct malo_softc*) ; 
 struct malo_hal* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct malo_hal*) ; 
 int FUNC16 (struct malo_hal*,char*,char*) ; 
 int FUNC17 (struct malo_hal*,TYPE_3__*) ; 
 int /*<<< orphan*/  malo_parent ; 
 int /*<<< orphan*/  malo_raw_xmit ; 
 int /*<<< orphan*/  malo_rx_proc ; 
 int /*<<< orphan*/  malo_scan_end ; 
 int /*<<< orphan*/  malo_scan_start ; 
 int /*<<< orphan*/  malo_set_channel ; 
 int FUNC18 (struct malo_softc*) ; 
 int /*<<< orphan*/  FUNC19 (struct malo_softc*) ; 
 int /*<<< orphan*/  malo_transmit ; 
 int /*<<< orphan*/  malo_tx_proc ; 
 int /*<<< orphan*/  malo_updateslot ; 
 int /*<<< orphan*/  malo_vap_create ; 
 int /*<<< orphan*/  malo_vap_delete ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 

int
FUNC25(uint16_t devid, struct malo_softc *sc)
{
	struct ieee80211com *ic = &sc->malo_ic;
	struct malo_hal *mh;
	int error;
	uint8_t bands[IEEE80211_MODE_BYTES];

	FUNC2(sc);
	FUNC4(&sc->malo_watchdog_timer, &sc->malo_mtx, 0);
	FUNC20(&sc->malo_snd, ifqmaxlen);

	mh = FUNC14(sc->malo_dev, devid,
	    sc->malo_io1h, sc->malo_io1t, sc->malo_dmat);
	if (mh == NULL) {
		FUNC6(sc->malo_dev, "unable to attach HAL\n");
		error = EIO;
		goto bad;
	}
	sc->malo_mh = mh;

	/*
	 * Load firmware so we can get setup.  We arbitrarily pick station
	 * firmware; we'll re-load firmware as needed so setting up
	 * the wrong mode isn't a big deal.
	 */
	error = FUNC16(mh, "malo8335-h", "malo8335-m");
	if (error != 0) {
		FUNC6(sc->malo_dev, "unable to setup firmware\n");
		goto bad1;
	}
	/* XXX gethwspecs() extracts correct informations?  not maybe!  */
	error = FUNC17(mh, &sc->malo_hwspecs);
	if (error != 0) {
		FUNC6(sc->malo_dev, "unable to fetch h/w specs\n");
		goto bad1;
	}

	FUNC0(sc, MALO_DEBUG_FW,
	    "malo_hal_gethwspecs: hwversion 0x%x hostif 0x%x"
	    "maxnum_wcb 0x%x maxnum_mcaddr 0x%x maxnum_tx_wcb 0x%x"
	    "regioncode 0x%x num_antenna 0x%x fw_releasenum 0x%x"
	    "wcbbase0 0x%x rxdesc_read 0x%x rxdesc_write 0x%x"
	    "ul_fw_awakecookie 0x%x w[4] = %x %x %x %x",
	    sc->malo_hwspecs.hwversion,
	    sc->malo_hwspecs.hostinterface, sc->malo_hwspecs.maxnum_wcb,
	    sc->malo_hwspecs.maxnum_mcaddr, sc->malo_hwspecs.maxnum_tx_wcb,
	    sc->malo_hwspecs.regioncode, sc->malo_hwspecs.num_antenna,
	    sc->malo_hwspecs.fw_releasenum, sc->malo_hwspecs.wcbbase0,
	    sc->malo_hwspecs.rxdesc_read, sc->malo_hwspecs.rxdesc_write,
	    sc->malo_hwspecs.ul_fw_awakecookie,
	    sc->malo_hwspecs.wcbbase[0], sc->malo_hwspecs.wcbbase[1],
	    sc->malo_hwspecs.wcbbase[2], sc->malo_hwspecs.wcbbase[3]);

	/* NB: firmware looks that it does not export regdomain info API.  */
	FUNC21(bands, 0, sizeof(bands));
	FUNC22(bands, IEEE80211_MODE_11B);
	FUNC22(bands, IEEE80211_MODE_11G);
	FUNC9(ic, NULL, bands);

	sc->malo_txantenna = 0x2;	/* h/w default */
	sc->malo_rxantenna = 0xffff;	/* h/w default */

	/*
	 * Allocate tx + rx descriptors and populate the lists.
	 * We immediately push the information to the firmware
	 * as otherwise it gets upset.
	 */
	error = FUNC13(sc);
	if (error != 0) {
		FUNC6(sc->malo_dev,
		    "failed to setup descriptors: %d\n", error);
		goto bad1;
	}
	error = FUNC18(sc);	/* push to firmware */
	if (error != 0)			/* NB: malo_setupdma prints msg */
		goto bad2;

	sc->malo_tq = FUNC23("malo_taskq", M_NOWAIT,
		taskqueue_thread_enqueue, &sc->malo_tq);
	FUNC24(&sc->malo_tq, 1, PI_NET,
		"%s taskq", FUNC5(sc->malo_dev));

	FUNC3(&sc->malo_rxtask, 0, malo_rx_proc, sc);
	FUNC3(&sc->malo_txtask, 0, malo_tx_proc, sc);

	ic->ic_softc = sc;
	ic->ic_name = FUNC5(sc->malo_dev);
	/* XXX not right but it's not used anywhere important */
	ic->ic_phytype = IEEE80211_T_OFDM;
	ic->ic_opmode = IEEE80211_M_STA;
	ic->ic_caps =
	      IEEE80211_C_STA			/* station mode supported */
	    | IEEE80211_C_BGSCAN		/* capable of bg scanning */
	    | IEEE80211_C_MONITOR		/* monitor mode */
	    | IEEE80211_C_SHPREAMBLE		/* short preamble supported */
	    | IEEE80211_C_SHSLOT		/* short slot time supported */
	    | IEEE80211_C_TXPMGT		/* capable of txpow mgt */
	    | IEEE80211_C_WPA			/* capable of WPA1+WPA2 */
	    ;
	FUNC1(ic->ic_macaddr, sc->malo_hwspecs.macaddr);

	/*
	 * Transmit requires space in the packet for a special format transmit
	 * record and optional padding between this record and the payload.
	 * Ask the net80211 layer to arrange this when encapsulating
	 * packets so we can add it efficiently. 
	 */
	ic->ic_headroom = sizeof(struct malo_txrec) -
		sizeof(struct ieee80211_frame);

	/* call MI attach routine. */
	FUNC8(ic);
	/* override default methods */
	ic->ic_vap_create = malo_vap_create;
	ic->ic_vap_delete = malo_vap_delete;
	ic->ic_raw_xmit = malo_raw_xmit;
	ic->ic_updateslot = malo_updateslot;
	ic->ic_scan_start = malo_scan_start;
	ic->ic_scan_end = malo_scan_end;
	ic->ic_set_channel = malo_set_channel;
	ic->ic_parent = malo_parent;
	ic->ic_transmit = malo_transmit;

	sc->malo_invalid = 0;		/* ready to go, enable int handling */

	FUNC10(ic,
	    &sc->malo_tx_th.wt_ihdr, sizeof(sc->malo_tx_th),
		MALO_TX_RADIOTAP_PRESENT,
	    &sc->malo_rx_th.wr_ihdr, sizeof(sc->malo_rx_th),
		MALO_RX_RADIOTAP_PRESENT);

	/*
	 * Setup dynamic sysctl's.
	 */
	FUNC19(sc);

	if (bootverbose)
		FUNC7(ic);
	FUNC11(sc);

	return 0;
bad2:
	FUNC12(sc);
bad1:
	FUNC15(mh);
bad:
	sc->malo_invalid = 1;

	return error;
}