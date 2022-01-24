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
struct ieee80211com {int ic_caps; int /*<<< orphan*/  ic_parent; int /*<<< orphan*/  ic_transmit; int /*<<< orphan*/  ic_update_mcast; int /*<<< orphan*/  ic_vap_delete; int /*<<< orphan*/  ic_vap_create; int /*<<< orphan*/  ic_set_channel; int /*<<< orphan*/  ic_scan_end; int /*<<< orphan*/  ic_scan_start; int /*<<< orphan*/  ic_raw_xmit; int /*<<< orphan*/  ic_opmode; int /*<<< orphan*/  ic_phytype; int /*<<< orphan*/  ic_name; struct upgt_softc* ic_softc; } ;
struct upgt_softc {scalar_t__ sc_memaddr_frame_start; scalar_t__ sc_memaddr_frame_end; scalar_t__ sc_memaddr_rx_start; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/ * sc_xfer; TYPE_2__ sc_rxtap; TYPE_1__ sc_txtap; void* sc_tx_dma_buf; void* sc_rx_dma_buf; int /*<<< orphan*/  sc_snd; int /*<<< orphan*/  sc_watchdog_ch; int /*<<< orphan*/  sc_led_ch; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_debug; int /*<<< orphan*/  sc_udev; struct ieee80211com sc_ic; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bands ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct upgt_softc*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int EIO ; 
 int IEEE80211_C_BGSCAN ; 
 int IEEE80211_C_MONITOR ; 
 int IEEE80211_C_SHPREAMBLE ; 
 int IEEE80211_C_SHSLOT ; 
 int IEEE80211_C_STA ; 
 int IEEE80211_C_WPA ; 
 int /*<<< orphan*/  IEEE80211_MODE_11B ; 
 int /*<<< orphan*/  IEEE80211_MODE_11G ; 
 int IEEE80211_MODE_BYTES ; 
 int /*<<< orphan*/  IEEE80211_M_STA ; 
 int /*<<< orphan*/  IEEE80211_T_OFDM ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MTX_NETWORK_LOCK ; 
 size_t UPGT_BULK_RX ; 
 size_t UPGT_BULK_TX ; 
 int /*<<< orphan*/  UPGT_DEBUG_FW ; 
 int /*<<< orphan*/  UPGT_IFACE_INDEX ; 
 scalar_t__ UPGT_MEMSIZE_RX ; 
 int /*<<< orphan*/  UPGT_N_XFERS ; 
 int /*<<< orphan*/  UPGT_RX_RADIOTAP_PRESENT ; 
 int /*<<< orphan*/  UPGT_TX_RADIOTAP_PRESENT ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct usb_attach_arg* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct upgt_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211com*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211com*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifqmaxlen ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct upgt_softc*) ; 
 int FUNC17 (struct upgt_softc*) ; 
 int FUNC18 (struct upgt_softc*) ; 
 int /*<<< orphan*/  upgt_config ; 
 int /*<<< orphan*/  upgt_debug ; 
 int FUNC19 (struct upgt_softc*) ; 
 int FUNC20 (struct upgt_softc*) ; 
 int FUNC21 (struct upgt_softc*) ; 
 int /*<<< orphan*/  FUNC22 (struct upgt_softc*) ; 
 int /*<<< orphan*/  FUNC23 (struct upgt_softc*) ; 
 int FUNC24 (struct upgt_softc*) ; 
 int FUNC25 (struct upgt_softc*) ; 
 int /*<<< orphan*/  FUNC26 (struct upgt_softc*) ; 
 int /*<<< orphan*/  upgt_parent ; 
 int /*<<< orphan*/  upgt_raw_xmit ; 
 int /*<<< orphan*/  upgt_scan_end ; 
 int /*<<< orphan*/  upgt_scan_start ; 
 int /*<<< orphan*/  upgt_set_channel ; 
 int /*<<< orphan*/  FUNC27 (struct upgt_softc*) ; 
 int /*<<< orphan*/  upgt_transmit ; 
 int /*<<< orphan*/  upgt_update_mcast ; 
 int /*<<< orphan*/  upgt_vap_create ; 
 int /*<<< orphan*/  upgt_vap_delete ; 
 int /*<<< orphan*/  FUNC28 (int) ; 
 int FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct upgt_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC32(device_t dev)
{
	struct upgt_softc *sc = FUNC4(dev);
	struct ieee80211com *ic = &sc->sc_ic;
	struct usb_attach_arg *uaa = FUNC2(dev);
	uint8_t bands[IEEE80211_MODE_BYTES];
	uint8_t iface_index = UPGT_IFACE_INDEX;
	int error;

	sc->sc_dev = dev;
	sc->sc_udev = uaa->device;
#ifdef UPGT_DEBUG
	sc->sc_debug = upgt_debug;
#endif
	FUNC6(dev);

	FUNC14(&sc->sc_mtx, FUNC3(sc->sc_dev), MTX_NETWORK_LOCK,
	    MTX_DEF);
	FUNC1(&sc->sc_led_ch, 0);
	FUNC1(&sc->sc_watchdog_ch, 0);
	FUNC11(&sc->sc_snd, ifqmaxlen);

	error = FUNC29(uaa->device, &iface_index, sc->sc_xfer,
	    upgt_config, UPGT_N_XFERS, sc, &sc->sc_mtx);
	if (error) {
		FUNC5(dev, "could not allocate USB transfers, "
		    "err=%s\n", FUNC28(error));
		goto fail1;
	}

	sc->sc_rx_dma_buf = FUNC31(
	    sc->sc_xfer[UPGT_BULK_RX], 0);
	sc->sc_tx_dma_buf = FUNC31(
	    sc->sc_xfer[UPGT_BULK_TX], 0);

	/* Setup TX and RX buffers */
	error = FUNC18(sc);
	if (error)
		goto fail2;
	error = FUNC17(sc);
	if (error)
		goto fail3;

	/* Initialize the device.  */
	error = FUNC19(sc);
	if (error)
		goto fail4;
	/* Verify the firmware.  */
	error = FUNC25(sc);
	if (error)
		goto fail4;
	/* Calculate device memory space.  */
	if (sc->sc_memaddr_frame_start == 0 || sc->sc_memaddr_frame_end == 0) {
		FUNC5(dev,
		    "could not find memory space addresses on FW\n");
		error = EIO;
		goto fail4;
	}
	sc->sc_memaddr_frame_end -= UPGT_MEMSIZE_RX + 1;
	sc->sc_memaddr_rx_start = sc->sc_memaddr_frame_end + 1;

	FUNC0(sc, UPGT_DEBUG_FW, "memory address frame start=0x%08x\n",
	    sc->sc_memaddr_frame_start);
	FUNC0(sc, UPGT_DEBUG_FW, "memory address frame end=0x%08x\n",
	    sc->sc_memaddr_frame_end);
	FUNC0(sc, UPGT_DEBUG_FW, "memory address rx start=0x%08x\n",
	    sc->sc_memaddr_rx_start);

	FUNC26(sc);

	/* Load the firmware.  */
	error = FUNC24(sc);
	if (error)
		goto fail4;

	/* Read the whole EEPROM content and parse it.  */
	error = FUNC21(sc);
	if (error)
		goto fail4;
	error = FUNC20(sc);
	if (error)
		goto fail4;

	/* all works related with the device have done here. */
	FUNC16(sc);

	ic->ic_softc = sc;
	ic->ic_name = FUNC3(dev);
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

	FUNC12(bands, 0, sizeof(bands));
	FUNC15(bands, IEEE80211_MODE_11B);
	FUNC15(bands, IEEE80211_MODE_11G);
	FUNC9(ic, NULL, bands);

	FUNC8(ic);
	ic->ic_raw_xmit = upgt_raw_xmit;
	ic->ic_scan_start = upgt_scan_start;
	ic->ic_scan_end = upgt_scan_end;
	ic->ic_set_channel = upgt_set_channel;
	ic->ic_vap_create = upgt_vap_create;
	ic->ic_vap_delete = upgt_vap_delete;
	ic->ic_update_mcast = upgt_update_mcast;
	ic->ic_transmit = upgt_transmit;
	ic->ic_parent = upgt_parent;

	FUNC10(ic,
	    &sc->sc_txtap.wt_ihdr, sizeof(sc->sc_txtap),
		UPGT_TX_RADIOTAP_PRESENT,
	    &sc->sc_rxtap.wr_ihdr, sizeof(sc->sc_rxtap),
		UPGT_RX_RADIOTAP_PRESENT);

	FUNC27(sc);

	if (bootverbose)
		FUNC7(ic);

	return (0);

fail4:	FUNC22(sc);
fail3:	FUNC23(sc);
fail2:	FUNC30(sc->sc_xfer, UPGT_N_XFERS);
fail1:	FUNC13(&sc->sc_mtx);

	return (error);
}