
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct usb_attach_arg {int device; } ;
struct TYPE_4__ {int wr_ihdr; } ;
struct TYPE_3__ {int wt_ihdr; } ;
struct ieee80211com {int ic_caps; int ic_parent; int ic_transmit; int ic_update_mcast; int ic_vap_delete; int ic_vap_create; int ic_set_channel; int ic_scan_end; int ic_scan_start; int ic_raw_xmit; int ic_opmode; int ic_phytype; int ic_name; struct upgt_softc* ic_softc; } ;
struct upgt_softc {scalar_t__ sc_memaddr_frame_start; scalar_t__ sc_memaddr_frame_end; scalar_t__ sc_memaddr_rx_start; int sc_mtx; int * sc_xfer; TYPE_2__ sc_rxtap; TYPE_1__ sc_txtap; void* sc_tx_dma_buf; void* sc_rx_dma_buf; int sc_snd; int sc_watchdog_ch; int sc_led_ch; int sc_dev; int sc_debug; int sc_udev; struct ieee80211com sc_ic; } ;
typedef int device_t ;
typedef int bands ;


 int DPRINTF (struct upgt_softc*,int ,char*,scalar_t__) ;
 int EIO ;
 int IEEE80211_C_BGSCAN ;
 int IEEE80211_C_MONITOR ;
 int IEEE80211_C_SHPREAMBLE ;
 int IEEE80211_C_SHSLOT ;
 int IEEE80211_C_STA ;
 int IEEE80211_C_WPA ;
 int IEEE80211_MODE_11B ;
 int IEEE80211_MODE_11G ;
 int IEEE80211_MODE_BYTES ;
 int IEEE80211_M_STA ;
 int IEEE80211_T_OFDM ;
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 size_t UPGT_BULK_RX ;
 size_t UPGT_BULK_TX ;
 int UPGT_DEBUG_FW ;
 int UPGT_IFACE_INDEX ;
 scalar_t__ UPGT_MEMSIZE_RX ;
 int UPGT_N_XFERS ;
 int UPGT_RX_RADIOTAP_PRESENT ;
 int UPGT_TX_RADIOTAP_PRESENT ;
 scalar_t__ bootverbose ;
 int callout_init (int *,int ) ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 int device_get_nameunit (int ) ;
 struct upgt_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int device_set_usb_desc (int ) ;
 int ieee80211_announce (struct ieee80211com*) ;
 int ieee80211_ifattach (struct ieee80211com*) ;
 int ieee80211_init_channels (struct ieee80211com*,int *,int *) ;
 int ieee80211_radiotap_attach (struct ieee80211com*,int *,int,int ,int *,int,int ) ;
 int ifqmaxlen ;
 int mbufq_init (int *,int ) ;
 int memset (int *,int ,int) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,int ,int ,int ) ;
 int setbit (int *,int ) ;
 int upgt_abort_xfers (struct upgt_softc*) ;
 int upgt_alloc_rx (struct upgt_softc*) ;
 int upgt_alloc_tx (struct upgt_softc*) ;
 int upgt_config ;
 int upgt_debug ;
 int upgt_device_reset (struct upgt_softc*) ;
 int upgt_eeprom_parse (struct upgt_softc*) ;
 int upgt_eeprom_read (struct upgt_softc*) ;
 int upgt_free_rx (struct upgt_softc*) ;
 int upgt_free_tx (struct upgt_softc*) ;
 int upgt_fw_load (struct upgt_softc*) ;
 int upgt_fw_verify (struct upgt_softc*) ;
 int upgt_mem_init (struct upgt_softc*) ;
 int upgt_parent ;
 int upgt_raw_xmit ;
 int upgt_scan_end ;
 int upgt_scan_start ;
 int upgt_set_channel ;
 int upgt_sysctl_node (struct upgt_softc*) ;
 int upgt_transmit ;
 int upgt_update_mcast ;
 int upgt_vap_create ;
 int upgt_vap_delete ;
 int usbd_errstr (int) ;
 int usbd_transfer_setup (int ,int *,int *,int ,int ,struct upgt_softc*,int *) ;
 int usbd_transfer_unsetup (int *,int ) ;
 void* usbd_xfer_get_frame_buffer (int ,int ) ;

__attribute__((used)) static int
upgt_attach(device_t dev)
{
 struct upgt_softc *sc = device_get_softc(dev);
 struct ieee80211com *ic = &sc->sc_ic;
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 uint8_t bands[IEEE80211_MODE_BYTES];
 uint8_t iface_index = UPGT_IFACE_INDEX;
 int error;

 sc->sc_dev = dev;
 sc->sc_udev = uaa->device;



 device_set_usb_desc(dev);

 mtx_init(&sc->sc_mtx, device_get_nameunit(sc->sc_dev), MTX_NETWORK_LOCK,
     MTX_DEF);
 callout_init(&sc->sc_led_ch, 0);
 callout_init(&sc->sc_watchdog_ch, 0);
 mbufq_init(&sc->sc_snd, ifqmaxlen);

 error = usbd_transfer_setup(uaa->device, &iface_index, sc->sc_xfer,
     upgt_config, UPGT_N_XFERS, sc, &sc->sc_mtx);
 if (error) {
  device_printf(dev, "could not allocate USB transfers, "
      "err=%s\n", usbd_errstr(error));
  goto fail1;
 }

 sc->sc_rx_dma_buf = usbd_xfer_get_frame_buffer(
     sc->sc_xfer[UPGT_BULK_RX], 0);
 sc->sc_tx_dma_buf = usbd_xfer_get_frame_buffer(
     sc->sc_xfer[UPGT_BULK_TX], 0);


 error = upgt_alloc_tx(sc);
 if (error)
  goto fail2;
 error = upgt_alloc_rx(sc);
 if (error)
  goto fail3;


 error = upgt_device_reset(sc);
 if (error)
  goto fail4;

 error = upgt_fw_verify(sc);
 if (error)
  goto fail4;

 if (sc->sc_memaddr_frame_start == 0 || sc->sc_memaddr_frame_end == 0) {
  device_printf(dev,
      "could not find memory space addresses on FW\n");
  error = EIO;
  goto fail4;
 }
 sc->sc_memaddr_frame_end -= UPGT_MEMSIZE_RX + 1;
 sc->sc_memaddr_rx_start = sc->sc_memaddr_frame_end + 1;

 DPRINTF(sc, UPGT_DEBUG_FW, "memory address frame start=0x%08x\n",
     sc->sc_memaddr_frame_start);
 DPRINTF(sc, UPGT_DEBUG_FW, "memory address frame end=0x%08x\n",
     sc->sc_memaddr_frame_end);
 DPRINTF(sc, UPGT_DEBUG_FW, "memory address rx start=0x%08x\n",
     sc->sc_memaddr_rx_start);

 upgt_mem_init(sc);


 error = upgt_fw_load(sc);
 if (error)
  goto fail4;


 error = upgt_eeprom_read(sc);
 if (error)
  goto fail4;
 error = upgt_eeprom_parse(sc);
 if (error)
  goto fail4;


 upgt_abort_xfers(sc);

 ic->ic_softc = sc;
 ic->ic_name = device_get_nameunit(dev);
 ic->ic_phytype = IEEE80211_T_OFDM;
 ic->ic_opmode = IEEE80211_M_STA;

 ic->ic_caps =
    IEEE80211_C_STA
  | IEEE80211_C_MONITOR
  | IEEE80211_C_SHPREAMBLE
         | IEEE80211_C_SHSLOT
  | IEEE80211_C_BGSCAN
         | IEEE80211_C_WPA
  ;

 memset(bands, 0, sizeof(bands));
 setbit(bands, IEEE80211_MODE_11B);
 setbit(bands, IEEE80211_MODE_11G);
 ieee80211_init_channels(ic, ((void*)0), bands);

 ieee80211_ifattach(ic);
 ic->ic_raw_xmit = upgt_raw_xmit;
 ic->ic_scan_start = upgt_scan_start;
 ic->ic_scan_end = upgt_scan_end;
 ic->ic_set_channel = upgt_set_channel;
 ic->ic_vap_create = upgt_vap_create;
 ic->ic_vap_delete = upgt_vap_delete;
 ic->ic_update_mcast = upgt_update_mcast;
 ic->ic_transmit = upgt_transmit;
 ic->ic_parent = upgt_parent;

 ieee80211_radiotap_attach(ic,
     &sc->sc_txtap.wt_ihdr, sizeof(sc->sc_txtap),
  UPGT_TX_RADIOTAP_PRESENT,
     &sc->sc_rxtap.wr_ihdr, sizeof(sc->sc_rxtap),
  UPGT_RX_RADIOTAP_PRESENT);

 upgt_sysctl_node(sc);

 if (bootverbose)
  ieee80211_announce(ic);

 return (0);

fail4: upgt_free_rx(sc);
fail3: upgt_free_tx(sc);
fail2: usbd_transfer_unsetup(sc->sc_xfer, UPGT_N_XFERS);
fail1: mtx_destroy(&sc->sc_mtx);

 return (error);
}
