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
typedef  scalar_t__ usb_error_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct usb_config {int dummy; } ;
struct usb_attach_arg {int /*<<< orphan*/  device; } ;
struct TYPE_4__ {int /*<<< orphan*/  wr_ihdr; } ;
struct TYPE_3__ {int /*<<< orphan*/  wt_ihdr; } ;
struct ieee80211com {int ic_caps; int /*<<< orphan*/  ic_transmit; int /*<<< orphan*/  ic_parent; int /*<<< orphan*/  ic_update_mcast; int /*<<< orphan*/  ic_update_promisc; int /*<<< orphan*/  ic_vap_delete; int /*<<< orphan*/  ic_vap_create; int /*<<< orphan*/  ic_updateslot; int /*<<< orphan*/  ic_set_channel; int /*<<< orphan*/  (* ic_getradiocaps ) (struct ieee80211com*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  ic_scan_end; int /*<<< orphan*/  ic_scan_start; int /*<<< orphan*/  ic_raw_xmit; int /*<<< orphan*/  ic_channels; int /*<<< orphan*/  ic_nchans; int /*<<< orphan*/  ic_opmode; int /*<<< orphan*/  ic_phytype; int /*<<< orphan*/  ic_name; struct urtw_softc* ic_softc; } ;
struct urtw_softc {int sc_flags; int /*<<< orphan*/ * sc_xfer; TYPE_2__ sc_rxtap; TYPE_1__ sc_txtap; int /*<<< orphan*/  sc_preamble_mode; int /*<<< orphan*/  sc_currate; int /*<<< orphan*/  sc_tx_retry; int /*<<< orphan*/  sc_rts_retry; int /*<<< orphan*/  sc_epromtype; void* sc_tx_dma_buf; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_snd; int /*<<< orphan*/  sc_watchdog_ch; int /*<<< orphan*/  sc_updateslot_task; int /*<<< orphan*/  sc_led_task; int /*<<< orphan*/  sc_led_ch; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_debug; int /*<<< orphan*/  sc_udev; struct ieee80211com sc_ic; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  IEEE80211_CHAN_MAX ; 
 int IEEE80211_C_BGSCAN ; 
 int IEEE80211_C_MONITOR ; 
 int IEEE80211_C_SHPREAMBLE ; 
 int IEEE80211_C_SHSLOT ; 
 int IEEE80211_C_STA ; 
 int IEEE80211_C_TXPMGT ; 
 int IEEE80211_C_WPA ; 
 int /*<<< orphan*/  IEEE80211_M_STA ; 
 int /*<<< orphan*/  IEEE80211_T_OFDM ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MTX_NETWORK_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct urtw_softc*) ; 
 size_t URTW_8187B_BULK_TX_BE ; 
 int /*<<< orphan*/  URTW_8187B_N_XFERS ; 
 size_t URTW_8187L_BULK_TX_LOW ; 
 int /*<<< orphan*/  URTW_8187L_N_XFERS ; 
 int /*<<< orphan*/  URTW_DEFAULT_RTS_RETRY ; 
 int /*<<< orphan*/  URTW_DEFAULT_TX_RETRY ; 
 int /*<<< orphan*/  URTW_EEPROM_93C46 ; 
 int /*<<< orphan*/  URTW_EEPROM_93C56 ; 
 int /*<<< orphan*/  URTW_IFACE_INDEX ; 
 int /*<<< orphan*/  FUNC1 (struct urtw_softc*) ; 
 scalar_t__ URTW_REV_RTL8187B ; 
 int /*<<< orphan*/  URTW_RIDX_CCK11 ; 
 int URTW_RTL8187B ; 
 int /*<<< orphan*/  URTW_RX ; 
 int URTW_RX_9356SEL ; 
 int /*<<< orphan*/  URTW_RX_RADIOTAP_PRESENT ; 
 int /*<<< orphan*/  URTW_TX_RADIOTAP_PRESENT ; 
 int /*<<< orphan*/  FUNC2 (struct urtw_softc*) ; 
 scalar_t__ FUNC3 (struct usb_attach_arg*) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct usb_attach_arg* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct urtw_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC12 (struct ieee80211com*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifqmaxlen ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usb_config* urtw_8187b_usbconfig ; 
 struct usb_config* urtw_8187l_usbconfig ; 
 int /*<<< orphan*/  urtw_debug ; 
 scalar_t__ FUNC15 (struct urtw_softc*) ; 
 scalar_t__ FUNC16 (struct urtw_softc*) ; 
 scalar_t__ FUNC17 (struct urtw_softc*) ; 
 int /*<<< orphan*/  FUNC18 (struct ieee80211com*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (struct urtw_softc*) ; 
 int /*<<< orphan*/  urtw_ledtask ; 
 int /*<<< orphan*/  urtw_parent ; 
 int /*<<< orphan*/  urtw_preamble_mode ; 
 int /*<<< orphan*/  urtw_raw_xmit ; 
 int /*<<< orphan*/  FUNC20 (struct urtw_softc*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  urtw_scan_end ; 
 int /*<<< orphan*/  urtw_scan_start ; 
 int /*<<< orphan*/  urtw_set_channel ; 
 int /*<<< orphan*/  FUNC21 (struct urtw_softc*) ; 
 int /*<<< orphan*/  urtw_transmit ; 
 int /*<<< orphan*/  urtw_update_mcast ; 
 int /*<<< orphan*/  urtw_update_promisc ; 
 int /*<<< orphan*/  urtw_updateslot ; 
 int /*<<< orphan*/  urtw_updateslottask ; 
 int /*<<< orphan*/  urtw_vap_create ; 
 int /*<<< orphan*/  urtw_vap_delete ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct usb_config const*,int /*<<< orphan*/ ,struct urtw_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC27(device_t dev)
{
	const struct usb_config *setup_start;
	int ret = ENXIO;
	struct urtw_softc *sc = FUNC7(dev);
	struct usb_attach_arg *uaa = FUNC5(dev);
	struct ieee80211com *ic = &sc->sc_ic;
	uint8_t iface_index = URTW_IFACE_INDEX;		/* XXX */
	uint16_t n_setup;
	uint32_t data;
	usb_error_t error;

	FUNC9(dev);

	sc->sc_dev = dev;
	sc->sc_udev = uaa->device;
	if (FUNC3(uaa) == URTW_REV_RTL8187B)
		sc->sc_flags |= URTW_RTL8187B;
#ifdef URTW_DEBUG
	sc->sc_debug = urtw_debug;
#endif

	FUNC14(&sc->sc_mtx, FUNC6(sc->sc_dev), MTX_NETWORK_LOCK,
	    MTX_DEF);
	FUNC22(&sc->sc_led_ch, &sc->sc_mtx, 0);
	FUNC0(&sc->sc_led_task, 0, urtw_ledtask, sc);
	FUNC0(&sc->sc_updateslot_task, 0, urtw_updateslottask, sc);
	FUNC4(&sc->sc_watchdog_ch, 0);
	FUNC13(&sc->sc_snd, ifqmaxlen);

	if (sc->sc_flags & URTW_RTL8187B) {
		setup_start = urtw_8187b_usbconfig;
		n_setup = URTW_8187B_N_XFERS;
	} else {
		setup_start = urtw_8187l_usbconfig;
		n_setup = URTW_8187L_N_XFERS;
	}

	error = FUNC24(uaa->device, &iface_index, sc->sc_xfer,
	    setup_start, n_setup, sc, &sc->sc_mtx);
	if (error) {
		FUNC8(dev, "could not allocate USB transfers, "
		    "err=%s\n", FUNC23(error));
		ret = ENXIO;
		goto fail0;
	}

	if (sc->sc_flags & URTW_RTL8187B) {
		sc->sc_tx_dma_buf = 
		    FUNC26(sc->sc_xfer[
		    URTW_8187B_BULK_TX_BE], 0);
	} else {
		sc->sc_tx_dma_buf =
		    FUNC26(sc->sc_xfer[
		    URTW_8187L_BULK_TX_LOW], 0);
	}

	FUNC1(sc);

	FUNC20(sc, URTW_RX, &data);
	sc->sc_epromtype = (data & URTW_RX_9356SEL) ? URTW_EEPROM_93C56 :
	    URTW_EEPROM_93C46;

	error = FUNC16(sc);
	if (error != 0)
		goto fail;
	error = FUNC15(sc);
	if (error != 0)
		goto fail;
	error = FUNC17(sc);
	if (error != 0)
		goto fail;
	error = FUNC19(sc);
	if (error != 0)
		goto fail;

	FUNC2(sc);

	sc->sc_rts_retry = URTW_DEFAULT_RTS_RETRY;
	sc->sc_tx_retry = URTW_DEFAULT_TX_RETRY;
	sc->sc_currate = URTW_RIDX_CCK11;
	sc->sc_preamble_mode = urtw_preamble_mode;

	ic->ic_softc = sc;
	ic->ic_name = FUNC6(dev);
	ic->ic_phytype = IEEE80211_T_OFDM;	/* not only, but not used */
	ic->ic_opmode = IEEE80211_M_STA;	/* default to BSS mode */

	/* set device capabilities */
	ic->ic_caps =
	    IEEE80211_C_STA |		/* station mode */
	    IEEE80211_C_MONITOR |	/* monitor mode supported */
	    IEEE80211_C_TXPMGT |	/* tx power management */
	    IEEE80211_C_SHPREAMBLE |	/* short preamble supported */
	    IEEE80211_C_SHSLOT |	/* short slot time supported */
	    IEEE80211_C_BGSCAN |	/* capable of bg scanning */
	    IEEE80211_C_WPA;		/* 802.11i */

	/* XXX TODO: setup regdomain if URTW_EPROM_CHANPLAN_BY_HW bit is set.*/
 
	FUNC18(ic, IEEE80211_CHAN_MAX, &ic->ic_nchans,
	    ic->ic_channels);

	FUNC11(ic);
	ic->ic_raw_xmit = urtw_raw_xmit;
	ic->ic_scan_start = urtw_scan_start;
	ic->ic_scan_end = urtw_scan_end;
	ic->ic_getradiocaps = urtw_getradiocaps;
	ic->ic_set_channel = urtw_set_channel;
	ic->ic_updateslot = urtw_updateslot;
	ic->ic_vap_create = urtw_vap_create;
	ic->ic_vap_delete = urtw_vap_delete;
	ic->ic_update_promisc = urtw_update_promisc;
	ic->ic_update_mcast = urtw_update_mcast;
	ic->ic_parent = urtw_parent;
	ic->ic_transmit = urtw_transmit;

	FUNC12(ic,
	    &sc->sc_txtap.wt_ihdr, sizeof(sc->sc_txtap),
	    URTW_TX_RADIOTAP_PRESENT,
	    &sc->sc_rxtap.wr_ihdr, sizeof(sc->sc_rxtap),
	    URTW_RX_RADIOTAP_PRESENT);

	FUNC21(sc);

	if (bootverbose)
		FUNC10(ic);
	return (0);

fail:
	FUNC2(sc);
	FUNC25(sc->sc_xfer, (sc->sc_flags & URTW_RTL8187B) ?
	    URTW_8187B_N_XFERS : URTW_8187L_N_XFERS);
fail0:
	return (ret);
}