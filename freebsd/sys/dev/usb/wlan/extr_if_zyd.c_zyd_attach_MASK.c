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
struct TYPE_6__ {int /*<<< orphan*/  wr_ihdr; } ;
struct TYPE_5__ {int /*<<< orphan*/  wt_ihdr; } ;
struct ieee80211com {int ic_caps; int /*<<< orphan*/  ic_transmit; int /*<<< orphan*/  ic_parent; void* ic_update_promisc; void* ic_update_mcast; int /*<<< orphan*/  ic_vap_delete; int /*<<< orphan*/  ic_vap_create; int /*<<< orphan*/  ic_set_channel; int /*<<< orphan*/  (* ic_getradiocaps ) (struct ieee80211com*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  ic_scan_end; int /*<<< orphan*/  ic_scan_start; int /*<<< orphan*/  ic_raw_xmit; int /*<<< orphan*/  ic_channels; int /*<<< orphan*/  ic_nchans; int /*<<< orphan*/  ic_opmode; int /*<<< orphan*/  ic_phytype; int /*<<< orphan*/  ic_name; struct zyd_softc* ic_softc; } ;
struct zyd_softc {TYPE_3__ sc_rxtap; TYPE_2__ sc_txtap; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_xfer; int /*<<< orphan*/  sc_snd; int /*<<< orphan*/  sc_rqh; int /*<<< orphan*/  sc_macrev; int /*<<< orphan*/  sc_udev; struct ieee80211com sc_ic; } ;
struct TYPE_4__ {int bcdDevice; } ;
struct usb_attach_arg {int /*<<< orphan*/  device; TYPE_1__ info; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  IEEE80211_CHAN_MAX ; 
 int IEEE80211_C_BGSCAN ; 
 int IEEE80211_C_MONITOR ; 
 int IEEE80211_C_SHPREAMBLE ; 
 int IEEE80211_C_SHSLOT ; 
 int IEEE80211_C_STA ; 
 int IEEE80211_C_WPA ; 
 int /*<<< orphan*/  IEEE80211_M_STA ; 
 int /*<<< orphan*/  IEEE80211_T_OFDM ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MTX_NETWORK_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_attach_arg*) ; 
 int /*<<< orphan*/  ZYD_IFACE_INDEX ; 
 int /*<<< orphan*/  FUNC2 (struct zyd_softc*) ; 
 int /*<<< orphan*/  ZYD_N_TRANSFER ; 
 int /*<<< orphan*/  ZYD_RX_RADIOTAP_PRESENT ; 
 int /*<<< orphan*/  ZYD_TX_RADIOTAP_PRESENT ; 
 int /*<<< orphan*/  FUNC3 (struct zyd_softc*) ; 
 scalar_t__ bootverbose ; 
 struct usb_attach_arg* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct zyd_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211com*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifqmaxlen ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct zyd_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zyd_config ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (struct zyd_softc*) ; 
 int /*<<< orphan*/  FUNC18 (struct ieee80211com*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zyd_parent ; 
 int /*<<< orphan*/  zyd_raw_xmit ; 
 int /*<<< orphan*/  zyd_scan_end ; 
 int /*<<< orphan*/  zyd_scan_start ; 
 int /*<<< orphan*/  zyd_set_channel ; 
 int /*<<< orphan*/  zyd_transmit ; 
 void* zyd_update_mcast ; 
 int /*<<< orphan*/  zyd_vap_create ; 
 int /*<<< orphan*/  zyd_vap_delete ; 

__attribute__((used)) static int
FUNC19(device_t dev)
{
	struct usb_attach_arg *uaa = FUNC4(dev);
	struct zyd_softc *sc = FUNC6(dev);
	struct ieee80211com *ic = &sc->sc_ic;
	uint8_t iface_index;
	int error;

	if (uaa->info.bcdDevice < 0x4330) {
		FUNC7(dev, "device version mismatch: 0x%X "
		    "(only >= 43.30 supported)\n",
		    uaa->info.bcdDevice);
		return (EINVAL);
	}

	FUNC8(dev);
	sc->sc_dev = dev;
	sc->sc_udev = uaa->device;
	sc->sc_macrev = FUNC1(uaa);

	FUNC13(&sc->sc_mtx, FUNC5(sc->sc_dev),
	    MTX_NETWORK_LOCK, MTX_DEF);
	FUNC0(&sc->sc_rqh);
	FUNC12(&sc->sc_snd, ifqmaxlen);

	iface_index = ZYD_IFACE_INDEX;
	error = FUNC15(uaa->device,
	    &iface_index, sc->sc_xfer, zyd_config,
	    ZYD_N_TRANSFER, sc, &sc->sc_mtx);
	if (error) {
		FUNC7(dev, "could not allocate USB transfers, "
		    "err=%s\n", FUNC14(error));
		goto detach;
	}

	FUNC2(sc);
	if ((error = FUNC17(sc)) != 0) {
		FUNC7(sc->sc_dev, "could not read EEPROM\n");
		FUNC3(sc);
		goto detach;
	}
	FUNC3(sc);

	ic->ic_softc = sc;
	ic->ic_name = FUNC5(dev);
	ic->ic_phytype = IEEE80211_T_OFDM;	/* not only, but not used */
	ic->ic_opmode = IEEE80211_M_STA;

	/* set device capabilities */
	ic->ic_caps =
		  IEEE80211_C_STA		/* station mode */
		| IEEE80211_C_MONITOR		/* monitor mode */
		| IEEE80211_C_SHPREAMBLE	/* short preamble supported */
	        | IEEE80211_C_SHSLOT		/* short slot time supported */
		| IEEE80211_C_BGSCAN		/* capable of bg scanning */
	        | IEEE80211_C_WPA		/* 802.11i */
		;

	FUNC18(ic, IEEE80211_CHAN_MAX, &ic->ic_nchans,
	    ic->ic_channels);

	FUNC10(ic);
	ic->ic_raw_xmit = zyd_raw_xmit;
	ic->ic_scan_start = zyd_scan_start;
	ic->ic_scan_end = zyd_scan_end;
	ic->ic_getradiocaps = zyd_getradiocaps;
	ic->ic_set_channel = zyd_set_channel;
	ic->ic_vap_create = zyd_vap_create;
	ic->ic_vap_delete = zyd_vap_delete;
	ic->ic_update_mcast = zyd_update_mcast;
	ic->ic_update_promisc = zyd_update_mcast;
	ic->ic_parent = zyd_parent;
	ic->ic_transmit = zyd_transmit;

	FUNC11(ic,
	    &sc->sc_txtap.wt_ihdr, sizeof(sc->sc_txtap),
		ZYD_TX_RADIOTAP_PRESENT,
	    &sc->sc_rxtap.wr_ihdr, sizeof(sc->sc_rxtap),
		ZYD_RX_RADIOTAP_PRESENT);

	if (bootverbose)
		FUNC9(ic);

	return (0);

detach:
	FUNC16(dev);
	return (ENXIO);			/* failure */
}