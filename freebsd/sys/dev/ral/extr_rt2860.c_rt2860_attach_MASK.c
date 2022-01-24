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
typedef  int uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/  wr_ihdr; } ;
struct TYPE_5__ {int /*<<< orphan*/  wt_ihdr; } ;
struct TYPE_4__ {int /*<<< orphan*/  wme_update; } ;
struct ieee80211com {int ic_caps; int /*<<< orphan*/  ic_vap_delete; int /*<<< orphan*/  ic_vap_create; int /*<<< orphan*/  ic_parent; int /*<<< orphan*/  ic_transmit; int /*<<< orphan*/  ic_newassoc; int /*<<< orphan*/  ic_node_free; int /*<<< orphan*/  ic_raw_xmit; int /*<<< orphan*/  ic_update_promisc; int /*<<< orphan*/  ic_updateslot; int /*<<< orphan*/  ic_set_channel; int /*<<< orphan*/  (* ic_getradiocaps ) (struct ieee80211com*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  ic_scan_end; int /*<<< orphan*/  ic_scan_start; TYPE_1__ ic_wme; int /*<<< orphan*/  ic_channels; int /*<<< orphan*/  ic_nchans; int /*<<< orphan*/  ic_phytype; int /*<<< orphan*/  ic_opmode; int /*<<< orphan*/  ic_name; struct rt2860_softc* ic_softc; int /*<<< orphan*/  ic_macaddr; } ;
struct rt2860_softc {int mac_ver; int mac_rev; int mgtqid; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/ * txq; int /*<<< orphan*/  rxq; scalar_t__ sc_debug; TYPE_3__ sc_rxtap; TYPE_2__ sc_txtap; int /*<<< orphan*/  sc_node_free; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  nrxchains; int /*<<< orphan*/  ntxchains; int /*<<< orphan*/  rf_rev; int /*<<< orphan*/  sc_flags; int /*<<< orphan*/  sc_snd; int /*<<< orphan*/  watchdog_ch; struct ieee80211com sc_ic; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
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
 int IEEE80211_C_WDS ; 
 int IEEE80211_C_WME ; 
 int IEEE80211_C_WPA ; 
 int /*<<< orphan*/  IEEE80211_M_STA ; 
 int /*<<< orphan*/  IEEE80211_T_OFDM ; 
 int MTX_DEF ; 
 int /*<<< orphan*/  MTX_NETWORK_LOCK ; 
 int MTX_RECURSE ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int FUNC1 (struct rt2860_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT2860_ADVANCED_PS ; 
 int /*<<< orphan*/  RT2860_ASIC_VER_ID ; 
 int /*<<< orphan*/  RT2860_RX_RADIOTAP_PRESENT ; 
 int /*<<< orphan*/  RT2860_TX_RADIOTAP_PRESENT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int WME_AC_VO ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct rt2860_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC12 (struct ieee80211com*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifqmaxlen ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC16 (struct rt2860_softc*,int /*<<< orphan*/ *) ; 
 int FUNC17 (struct rt2860_softc*) ; 
 int FUNC18 (struct rt2860_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct rt2860_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct rt2860_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct ieee80211com*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rt2860_newassoc ; 
 int /*<<< orphan*/  rt2860_node_free ; 
 int /*<<< orphan*/  rt2860_parent ; 
 int /*<<< orphan*/  rt2860_raw_xmit ; 
 int /*<<< orphan*/  FUNC23 (struct rt2860_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rt2860_scan_end ; 
 int /*<<< orphan*/  rt2860_scan_start ; 
 int /*<<< orphan*/  rt2860_set_channel ; 
 int /*<<< orphan*/  rt2860_transmit ; 
 int /*<<< orphan*/  rt2860_update_promisc ; 
 int /*<<< orphan*/  rt2860_updateedca ; 
 int /*<<< orphan*/  rt2860_updateslot ; 
 int /*<<< orphan*/  rt2860_vap_create ; 
 int /*<<< orphan*/  rt2860_vap_delete ; 

int
FUNC24(device_t dev, int id)
{
	struct rt2860_softc *sc = FUNC6(dev);
	struct ieee80211com *ic = &sc->sc_ic;
	uint32_t tmp;
	int error, ntries, qid;

	sc->sc_dev = dev;
	sc->sc_debug = 0;

	FUNC15(&sc->sc_mtx, FUNC5(dev), MTX_NETWORK_LOCK,
	    MTX_DEF | MTX_RECURSE);

	FUNC4(&sc->watchdog_ch, &sc->sc_mtx, 0);
	FUNC13(&sc->sc_snd, ifqmaxlen);

	/* wait for NIC to initialize */
	for (ntries = 0; ntries < 100; ntries++) {
		tmp = FUNC1(sc, RT2860_ASIC_VER_ID);
		if (tmp != 0 && tmp != 0xffffffff)
			break;
		FUNC0(10);
	}
	if (ntries == 100) {
		FUNC9(sc->sc_dev,
		    "timeout waiting for NIC to initialize\n");
		error = EIO;
		goto fail1;
	}
	sc->mac_ver = tmp >> 16;
	sc->mac_rev = tmp & 0xffff;

	if (sc->mac_ver != 0x2860 &&
	    (id == 0x0681 || id == 0x0781 || id == 0x1059))
		sc->sc_flags |= RT2860_ADVANCED_PS;

	/* retrieve RF rev. no and various other things from EEPROM */
	FUNC23(sc, ic->ic_macaddr);
	FUNC9(sc->sc_dev, "MAC/BBP RT%X (rev 0x%04X), "
	    "RF %s (MIMO %dT%dR), address %6D\n",
	    sc->mac_ver, sc->mac_rev, FUNC21(sc->rf_rev),
	    sc->ntxchains, sc->nrxchains, ic->ic_macaddr, ":");

	/*
	 * Allocate Tx (4 EDCAs + HCCA + Mgt) and Rx rings.
	 */
	for (qid = 0; qid < 6; qid++) {
		if ((error = FUNC18(sc, &sc->txq[qid])) != 0) {
			FUNC9(sc->sc_dev,
			    "could not allocate Tx ring %d\n", qid);
			goto fail2;
		}
	}

	if ((error = FUNC16(sc, &sc->rxq)) != 0) {
		FUNC9(sc->sc_dev, "could not allocate Rx ring\n");
		goto fail2;
	}

	if ((error = FUNC17(sc)) != 0) {
		FUNC9(sc->sc_dev, "could not allocate Tx pool\n");
		goto fail3;
	}

	/* mgmt ring is broken on RT2860C, use EDCA AC VO ring instead */
	sc->mgtqid = (sc->mac_ver == 0x2860 && sc->mac_rev == 0x0100) ?
	    WME_AC_VO : 5;

	ic->ic_softc = sc;
	ic->ic_name = FUNC5(dev);
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
#if 0
		| IEEE80211_C_BGSCAN		/* capable of bg scanning */
#endif
		| IEEE80211_C_WME		/* 802.11e */
		;

	FUNC22(ic, IEEE80211_CHAN_MAX, &ic->ic_nchans,
	    ic->ic_channels);

	FUNC11(ic);

	ic->ic_wme.wme_update = rt2860_updateedca;
	ic->ic_scan_start = rt2860_scan_start;
	ic->ic_scan_end = rt2860_scan_end;
	ic->ic_getradiocaps = rt2860_getradiocaps;
	ic->ic_set_channel = rt2860_set_channel;
	ic->ic_updateslot = rt2860_updateslot;
	ic->ic_update_promisc = rt2860_update_promisc;
	ic->ic_raw_xmit = rt2860_raw_xmit;
	sc->sc_node_free = ic->ic_node_free;
	ic->ic_node_free = rt2860_node_free;
	ic->ic_newassoc = rt2860_newassoc;
	ic->ic_transmit = rt2860_transmit;
	ic->ic_parent = rt2860_parent;
	ic->ic_vap_create = rt2860_vap_create;
	ic->ic_vap_delete = rt2860_vap_delete;

	FUNC12(ic,
	    &sc->sc_txtap.wt_ihdr, sizeof(sc->sc_txtap),
		RT2860_TX_RADIOTAP_PRESENT,
	    &sc->sc_rxtap.wr_ihdr, sizeof(sc->sc_rxtap),
		RT2860_RX_RADIOTAP_PRESENT);

#ifdef RAL_DEBUG
	SYSCTL_ADD_INT(device_get_sysctl_ctx(dev),
	    SYSCTL_CHILDREN(device_get_sysctl_tree(dev)), OID_AUTO,
	    "debug", CTLFLAG_RW, &sc->sc_debug, 0, "debug msgs");
#endif
	if (bootverbose)
		FUNC10(ic);

	return 0;

fail3:	FUNC19(sc, &sc->rxq);
fail2:	while (--qid >= 0)
		FUNC20(sc, &sc->txq[qid]);
fail1:	FUNC14(&sc->sc_mtx);
	return error;
}