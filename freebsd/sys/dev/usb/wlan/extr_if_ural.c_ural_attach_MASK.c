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
typedef  int /*<<< orphan*/  uint8_t ;
struct usb_attach_arg {int /*<<< orphan*/  device; } ;
struct TYPE_4__ {int /*<<< orphan*/  wr_ihdr; } ;
struct TYPE_3__ {int /*<<< orphan*/  wt_ihdr; } ;
struct ieee80211com {int ic_caps; int /*<<< orphan*/  ic_vap_delete; int /*<<< orphan*/  ic_vap_create; int /*<<< orphan*/  ic_transmit; int /*<<< orphan*/  ic_parent; int /*<<< orphan*/  ic_set_channel; int /*<<< orphan*/  (* ic_getradiocaps ) (struct ieee80211com*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  ic_scan_end; int /*<<< orphan*/  ic_scan_start; int /*<<< orphan*/  ic_raw_xmit; int /*<<< orphan*/  ic_update_promisc; int /*<<< orphan*/  ic_channels; int /*<<< orphan*/  ic_nchans; int /*<<< orphan*/  ic_phytype; int /*<<< orphan*/  ic_name; struct ural_softc* ic_softc; } ;
struct ural_softc {TYPE_2__ sc_rxtap; TYPE_1__ sc_txtap; int /*<<< orphan*/  rf_rev; int /*<<< orphan*/  asic_rev; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_xfer; int /*<<< orphan*/  sc_snd; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_udev; struct ieee80211com sc_ic; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  IEEE80211_CHAN_MAX ; 
 int IEEE80211_C_BGSCAN ; 
 int IEEE80211_C_HOSTAP ; 
 int IEEE80211_C_IBSS ; 
 int IEEE80211_C_MONITOR ; 
 int IEEE80211_C_SHPREAMBLE ; 
 int IEEE80211_C_SHSLOT ; 
 int IEEE80211_C_STA ; 
 int IEEE80211_C_TXPMGT ; 
 int IEEE80211_C_WPA ; 
 int /*<<< orphan*/  IEEE80211_T_OFDM ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MTX_NETWORK_LOCK ; 
 int /*<<< orphan*/  RAL_IFACE_INDEX ; 
 int /*<<< orphan*/  FUNC0 (struct ural_softc*) ; 
 int /*<<< orphan*/  RAL_MAC_CSR0 ; 
 int /*<<< orphan*/  RAL_RX_RADIOTAP_PRESENT ; 
 int /*<<< orphan*/  RAL_TX_RADIOTAP_PRESENT ; 
 int /*<<< orphan*/  FUNC1 (struct ural_softc*) ; 
 int /*<<< orphan*/  URAL_N_TRANSFER ; 
 scalar_t__ bootverbose ; 
 struct usb_attach_arg* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct ural_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211com*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifqmaxlen ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ural_config ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ieee80211com*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ural_parent ; 
 int /*<<< orphan*/  ural_raw_xmit ; 
 int /*<<< orphan*/  FUNC15 (struct ural_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ural_softc*) ; 
 int /*<<< orphan*/  ural_scan_end ; 
 int /*<<< orphan*/  ural_scan_start ; 
 int /*<<< orphan*/  ural_set_channel ; 
 int /*<<< orphan*/  ural_transmit ; 
 int /*<<< orphan*/  ural_update_promisc ; 
 int /*<<< orphan*/  ural_vap_create ; 
 int /*<<< orphan*/  ural_vap_delete ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ural_softc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC19(device_t self)
{
	struct usb_attach_arg *uaa = FUNC2(self);
	struct ural_softc *sc = FUNC4(self);
	struct ieee80211com *ic = &sc->sc_ic;
	uint8_t iface_index;
	int error;

	FUNC6(self);
	sc->sc_udev = uaa->device;
	sc->sc_dev = self;

	FUNC11(&sc->sc_mtx, FUNC3(self),
	    MTX_NETWORK_LOCK, MTX_DEF);
	FUNC10(&sc->sc_snd, ifqmaxlen);

	iface_index = RAL_IFACE_INDEX;
	error = FUNC18(uaa->device,
	    &iface_index, sc->sc_xfer, ural_config,
	    URAL_N_TRANSFER, sc, &sc->sc_mtx);
	if (error) {
		FUNC5(self, "could not allocate USB transfers, "
		    "err=%s\n", FUNC17(error));
		goto detach;
	}

	FUNC0(sc);
	/* retrieve RT2570 rev. no */
	sc->asic_rev = FUNC15(sc, RAL_MAC_CSR0);

	/* retrieve MAC address and various other things from EEPROM */
	FUNC16(sc);
	FUNC1(sc);

	FUNC5(self, "MAC/BBP RT2570 (rev 0x%02x), RF %s\n",
	    sc->asic_rev, FUNC13(sc->rf_rev));

	ic->ic_softc = sc;
	ic->ic_name = FUNC3(self);
	ic->ic_phytype = IEEE80211_T_OFDM; /* not only, but not used */

	/* set device capabilities */
	ic->ic_caps =
	      IEEE80211_C_STA		/* station mode supported */
	    | IEEE80211_C_IBSS		/* IBSS mode supported */
	    | IEEE80211_C_MONITOR	/* monitor mode supported */
	    | IEEE80211_C_HOSTAP	/* HostAp mode supported */
	    | IEEE80211_C_TXPMGT	/* tx power management */
	    | IEEE80211_C_SHPREAMBLE	/* short preamble supported */
	    | IEEE80211_C_SHSLOT	/* short slot time supported */
	    | IEEE80211_C_BGSCAN	/* bg scanning supported */
	    | IEEE80211_C_WPA		/* 802.11i */
	    ;

	FUNC14(ic, IEEE80211_CHAN_MAX, &ic->ic_nchans,
	    ic->ic_channels);

	FUNC8(ic);
	ic->ic_update_promisc = ural_update_promisc;
	ic->ic_raw_xmit = ural_raw_xmit;
	ic->ic_scan_start = ural_scan_start;
	ic->ic_scan_end = ural_scan_end;
	ic->ic_getradiocaps = ural_getradiocaps;
	ic->ic_set_channel = ural_set_channel;
	ic->ic_parent = ural_parent;
	ic->ic_transmit = ural_transmit;
	ic->ic_vap_create = ural_vap_create;
	ic->ic_vap_delete = ural_vap_delete;

	FUNC9(ic,
	    &sc->sc_txtap.wt_ihdr, sizeof(sc->sc_txtap),
		RAL_TX_RADIOTAP_PRESENT,
	    &sc->sc_rxtap.wr_ihdr, sizeof(sc->sc_rxtap),
		RAL_RX_RADIOTAP_PRESENT);

	if (bootverbose)
		FUNC7(ic);

	return (0);

detach:
	FUNC12(self);
	return (ENXIO);			/* failure */
}