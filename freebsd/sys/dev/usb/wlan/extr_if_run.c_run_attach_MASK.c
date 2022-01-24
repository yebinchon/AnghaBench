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
typedef  int uint32_t ;
struct usb_attach_arg {int /*<<< orphan*/  device; } ;
struct TYPE_6__ {int /*<<< orphan*/  wr_ihdr; } ;
struct TYPE_5__ {int /*<<< orphan*/  wt_ihdr; } ;
struct TYPE_4__ {int /*<<< orphan*/  wme_update; } ;
struct ieee80211com {int ic_caps; int ic_cryptocaps; int /*<<< orphan*/  ic_parent; int /*<<< orphan*/  ic_transmit; int /*<<< orphan*/  ic_vap_delete; int /*<<< orphan*/  ic_vap_create; int /*<<< orphan*/  ic_update_promisc; int /*<<< orphan*/  ic_raw_xmit; TYPE_1__ ic_wme; int /*<<< orphan*/  ic_update_mcast; int /*<<< orphan*/  ic_updateslot; int /*<<< orphan*/  ic_newassoc; int /*<<< orphan*/  ic_node_alloc; int /*<<< orphan*/  (* ic_getradiocaps ) (struct ieee80211com*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  ic_set_channel; int /*<<< orphan*/  ic_scan_end; int /*<<< orphan*/  ic_scan_start; int /*<<< orphan*/  ic_channels; int /*<<< orphan*/  ic_nchans; int /*<<< orphan*/  ic_flags_ext; int /*<<< orphan*/  ic_flags; int /*<<< orphan*/  ic_opmode; int /*<<< orphan*/  ic_phytype; int /*<<< orphan*/  ic_name; struct run_softc* ic_softc; int /*<<< orphan*/  ic_macaddr; } ;
struct run_softc {int mac_ver; int mac_rev; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  ratectl_ch; int /*<<< orphan*/  ratectl_task; int /*<<< orphan*/  cmdq_task; TYPE_3__ sc_rxtap; TYPE_2__ sc_txtap; int /*<<< orphan*/  nrxchains; int /*<<< orphan*/  ntxchains; int /*<<< orphan*/  rf_rev; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_xfer; int /*<<< orphan*/  sc_snd; int /*<<< orphan*/  sc_flags; int /*<<< orphan*/  sc_udev; struct ieee80211com sc_ic; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  IEEE80211_CHAN_MAX ; 
 int IEEE80211_CRYPTO_AES_CCM ; 
 int IEEE80211_CRYPTO_TKIP ; 
 int IEEE80211_CRYPTO_TKIPMIC ; 
 int IEEE80211_CRYPTO_WEP ; 
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
 int /*<<< orphan*/  IEEE80211_FEXT_SWBMISS ; 
 int /*<<< orphan*/  IEEE80211_F_DATAPAD ; 
 int /*<<< orphan*/  IEEE80211_M_STA ; 
 int /*<<< orphan*/  IEEE80211_T_OFDM ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MTX_NETWORK_LOCK ; 
 int /*<<< orphan*/  RT2860_ASIC_VER_ID ; 
 int /*<<< orphan*/  RT2860_IFACE_INDEX ; 
 scalar_t__ RUN_EJECT ; 
 int /*<<< orphan*/  RUN_FLAG_FWLOAD_NEEDED ; 
 int /*<<< orphan*/  FUNC0 (struct run_softc*) ; 
 int /*<<< orphan*/  RUN_N_XFER ; 
 int /*<<< orphan*/  RUN_RX_RADIOTAP_PRESENT ; 
 int /*<<< orphan*/  RUN_TX_RADIOTAP_PRESENT ; 
 int /*<<< orphan*/  FUNC1 (struct run_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct run_softc*) ; 
 scalar_t__ FUNC3 (struct usb_attach_arg*) ; 
 scalar_t__ bootverbose ; 
 struct usb_attach_arg* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct run_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC12 (struct ieee80211com*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifqmaxlen ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  run_cmdq_cb ; 
 int /*<<< orphan*/  run_config ; 
 int /*<<< orphan*/  FUNC15 (struct run_softc*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct ieee80211com*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  run_newassoc ; 
 int /*<<< orphan*/  run_node_alloc ; 
 int /*<<< orphan*/  run_parent ; 
 int /*<<< orphan*/  run_ratectl_cb ; 
 int /*<<< orphan*/  run_raw_xmit ; 
 scalar_t__ FUNC19 (struct run_softc*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC20 (struct run_softc*) ; 
 int /*<<< orphan*/  run_scan_end ; 
 int /*<<< orphan*/  run_scan_start ; 
 int /*<<< orphan*/  run_set_channel ; 
 int /*<<< orphan*/  run_transmit ; 
 int /*<<< orphan*/  run_update_mcast ; 
 int /*<<< orphan*/  run_update_promisc ; 
 int /*<<< orphan*/  run_updateslot ; 
 int /*<<< orphan*/  run_vap_create ; 
 int /*<<< orphan*/  run_vap_delete ; 
 int /*<<< orphan*/  run_wme_update ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct run_softc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC24(device_t self)
{
	struct run_softc *sc = FUNC6(self);
	struct usb_attach_arg *uaa = FUNC4(self);
	struct ieee80211com *ic = &sc->sc_ic;
	uint32_t ver;
	uint8_t iface_index;
	int ntries, error;

	FUNC8(self);
	sc->sc_udev = uaa->device;
	sc->sc_dev = self;
	if (FUNC3(uaa) != RUN_EJECT)
		sc->sc_flags |= RUN_FLAG_FWLOAD_NEEDED;

	FUNC14(&sc->sc_mtx, FUNC5(sc->sc_dev),
	    MTX_NETWORK_LOCK, MTX_DEF);
	FUNC13(&sc->sc_snd, ifqmaxlen);

	iface_index = RT2860_IFACE_INDEX;

	error = FUNC23(uaa->device, &iface_index,
	    sc->sc_xfer, run_config, RUN_N_XFER, sc, &sc->sc_mtx);
	if (error) {
		FUNC7(self, "could not allocate USB transfers, "
		    "err=%s\n", FUNC22(error));
		goto detach;
	}

	FUNC0(sc);

	/* wait for the chip to settle */
	for (ntries = 0; ntries < 100; ntries++) {
		if (FUNC19(sc, RT2860_ASIC_VER_ID, &ver) != 0) {
			FUNC1(sc);
			goto detach;
		}
		if (ver != 0 && ver != 0xffffffff)
			break;
		FUNC15(sc, 10);
	}
	if (ntries == 100) {
		FUNC7(sc->sc_dev,
		    "timeout waiting for NIC to initialize\n");
		FUNC1(sc);
		goto detach;
	}
	sc->mac_ver = ver >> 16;
	sc->mac_rev = ver & 0xffff;

	/* retrieve RF rev. no and various other things from EEPROM */
	FUNC20(sc);

	FUNC7(sc->sc_dev,
	    "MAC/BBP RT%04X (rev 0x%04X), RF %s (MIMO %dT%dR), address %s\n",
	    sc->mac_ver, sc->mac_rev, FUNC17(sc->rf_rev),
	    sc->ntxchains, sc->nrxchains, FUNC9(ic->ic_macaddr));

	FUNC1(sc);

	ic->ic_softc = sc;
	ic->ic_name = FUNC5(self);
	ic->ic_phytype = IEEE80211_T_OFDM;	/* not only, but not used */
	ic->ic_opmode = IEEE80211_M_STA;	/* default to BSS mode */

	/* set device capabilities */
	ic->ic_caps =
	    IEEE80211_C_STA |		/* station mode supported */
	    IEEE80211_C_MONITOR |	/* monitor mode supported */
	    IEEE80211_C_IBSS |
	    IEEE80211_C_HOSTAP |
	    IEEE80211_C_WDS |		/* 4-address traffic works */
	    IEEE80211_C_MBSS |
	    IEEE80211_C_SHPREAMBLE |	/* short preamble supported */
	    IEEE80211_C_SHSLOT |	/* short slot time supported */
	    IEEE80211_C_WME |		/* WME */
	    IEEE80211_C_WPA;		/* WPA1|WPA2(RSN) */

	ic->ic_cryptocaps =
	    IEEE80211_CRYPTO_WEP |
	    IEEE80211_CRYPTO_AES_CCM |
	    IEEE80211_CRYPTO_TKIPMIC |
	    IEEE80211_CRYPTO_TKIP;

	ic->ic_flags |= IEEE80211_F_DATAPAD;
	ic->ic_flags_ext |= IEEE80211_FEXT_SWBMISS;

	FUNC18(ic, IEEE80211_CHAN_MAX, &ic->ic_nchans,
	    ic->ic_channels);

	FUNC11(ic);

	ic->ic_scan_start = run_scan_start;
	ic->ic_scan_end = run_scan_end;
	ic->ic_set_channel = run_set_channel;
	ic->ic_getradiocaps = run_getradiocaps;
	ic->ic_node_alloc = run_node_alloc;
	ic->ic_newassoc = run_newassoc;
	ic->ic_updateslot = run_updateslot;
	ic->ic_update_mcast = run_update_mcast;
	ic->ic_wme.wme_update = run_wme_update;
	ic->ic_raw_xmit = run_raw_xmit;
	ic->ic_update_promisc = run_update_promisc;
	ic->ic_vap_create = run_vap_create;
	ic->ic_vap_delete = run_vap_delete;
	ic->ic_transmit = run_transmit;
	ic->ic_parent = run_parent;

	FUNC12(ic,
	    &sc->sc_txtap.wt_ihdr, sizeof(sc->sc_txtap),
		RUN_TX_RADIOTAP_PRESENT,
	    &sc->sc_rxtap.wr_ihdr, sizeof(sc->sc_rxtap),
		RUN_RX_RADIOTAP_PRESENT);

	FUNC2(&sc->cmdq_task, 0, run_cmdq_cb, sc);
	FUNC2(&sc->ratectl_task, 0, run_ratectl_cb, sc);
	FUNC21(&sc->ratectl_ch, &sc->sc_mtx, 0);

	if (bootverbose)
		FUNC10(ic);

	return (0);

detach:
	FUNC16(self);
	return (ENXIO);
}