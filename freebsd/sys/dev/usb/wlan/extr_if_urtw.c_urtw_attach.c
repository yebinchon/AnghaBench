
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ usb_error_t ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct usb_config {int dummy; } ;
struct usb_attach_arg {int device; } ;
struct TYPE_4__ {int wr_ihdr; } ;
struct TYPE_3__ {int wt_ihdr; } ;
struct ieee80211com {int ic_caps; int ic_transmit; int ic_parent; int ic_update_mcast; int ic_update_promisc; int ic_vap_delete; int ic_vap_create; int ic_updateslot; int ic_set_channel; int (* ic_getradiocaps ) (struct ieee80211com*,int ,int *,int ) ;int ic_scan_end; int ic_scan_start; int ic_raw_xmit; int ic_channels; int ic_nchans; int ic_opmode; int ic_phytype; int ic_name; struct urtw_softc* ic_softc; } ;
struct urtw_softc {int sc_flags; int * sc_xfer; TYPE_2__ sc_rxtap; TYPE_1__ sc_txtap; int sc_preamble_mode; int sc_currate; int sc_tx_retry; int sc_rts_retry; int sc_epromtype; void* sc_tx_dma_buf; int sc_mtx; int sc_snd; int sc_watchdog_ch; int sc_updateslot_task; int sc_led_task; int sc_led_ch; int sc_dev; int sc_debug; int sc_udev; struct ieee80211com sc_ic; } ;
typedef int device_t ;


 int ENXIO ;
 int IEEE80211_CHAN_MAX ;
 int IEEE80211_C_BGSCAN ;
 int IEEE80211_C_MONITOR ;
 int IEEE80211_C_SHPREAMBLE ;
 int IEEE80211_C_SHSLOT ;
 int IEEE80211_C_STA ;
 int IEEE80211_C_TXPMGT ;
 int IEEE80211_C_WPA ;
 int IEEE80211_M_STA ;
 int IEEE80211_T_OFDM ;
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 int TASK_INIT (int *,int ,int ,struct urtw_softc*) ;
 size_t URTW_8187B_BULK_TX_BE ;
 int URTW_8187B_N_XFERS ;
 size_t URTW_8187L_BULK_TX_LOW ;
 int URTW_8187L_N_XFERS ;
 int URTW_DEFAULT_RTS_RETRY ;
 int URTW_DEFAULT_TX_RETRY ;
 int URTW_EEPROM_93C46 ;
 int URTW_EEPROM_93C56 ;
 int URTW_IFACE_INDEX ;
 int URTW_LOCK (struct urtw_softc*) ;
 scalar_t__ URTW_REV_RTL8187B ;
 int URTW_RIDX_CCK11 ;
 int URTW_RTL8187B ;
 int URTW_RX ;
 int URTW_RX_9356SEL ;
 int URTW_RX_RADIOTAP_PRESENT ;
 int URTW_TX_RADIOTAP_PRESENT ;
 int URTW_UNLOCK (struct urtw_softc*) ;
 scalar_t__ USB_GET_DRIVER_INFO (struct usb_attach_arg*) ;
 scalar_t__ bootverbose ;
 int callout_init (int *,int ) ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 int device_get_nameunit (int ) ;
 struct urtw_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int ) ;
 int device_set_usb_desc (int ) ;
 int ieee80211_announce (struct ieee80211com*) ;
 int ieee80211_ifattach (struct ieee80211com*) ;
 int ieee80211_radiotap_attach (struct ieee80211com*,int *,int,int ,int *,int,int ) ;
 int ifqmaxlen ;
 int mbufq_init (int *,int ) ;
 int mtx_init (int *,int ,int ,int ) ;
 struct usb_config* urtw_8187b_usbconfig ;
 struct usb_config* urtw_8187l_usbconfig ;
 int urtw_debug ;
 scalar_t__ urtw_get_macaddr (struct urtw_softc*) ;
 scalar_t__ urtw_get_rfchip (struct urtw_softc*) ;
 scalar_t__ urtw_get_txpwr (struct urtw_softc*) ;
 int urtw_getradiocaps (struct ieee80211com*,int ,int *,int ) ;
 scalar_t__ urtw_led_init (struct urtw_softc*) ;
 int urtw_ledtask ;
 int urtw_parent ;
 int urtw_preamble_mode ;
 int urtw_raw_xmit ;
 int urtw_read32_m (struct urtw_softc*,int ,int*) ;
 int urtw_scan_end ;
 int urtw_scan_start ;
 int urtw_set_channel ;
 int urtw_sysctl_node (struct urtw_softc*) ;
 int urtw_transmit ;
 int urtw_update_mcast ;
 int urtw_update_promisc ;
 int urtw_updateslot ;
 int urtw_updateslottask ;
 int urtw_vap_create ;
 int urtw_vap_delete ;
 int usb_callout_init_mtx (int *,int *,int ) ;
 int usbd_errstr (scalar_t__) ;
 scalar_t__ usbd_transfer_setup (int ,int *,int *,struct usb_config const*,int ,struct urtw_softc*,int *) ;
 int usbd_transfer_unsetup (int *,int ) ;
 void* usbd_xfer_get_frame_buffer (int ,int ) ;

__attribute__((used)) static int
urtw_attach(device_t dev)
{
 const struct usb_config *setup_start;
 int ret = ENXIO;
 struct urtw_softc *sc = device_get_softc(dev);
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 struct ieee80211com *ic = &sc->sc_ic;
 uint8_t iface_index = URTW_IFACE_INDEX;
 uint16_t n_setup;
 uint32_t data;
 usb_error_t error;

 device_set_usb_desc(dev);

 sc->sc_dev = dev;
 sc->sc_udev = uaa->device;
 if (USB_GET_DRIVER_INFO(uaa) == URTW_REV_RTL8187B)
  sc->sc_flags |= URTW_RTL8187B;




 mtx_init(&sc->sc_mtx, device_get_nameunit(sc->sc_dev), MTX_NETWORK_LOCK,
     MTX_DEF);
 usb_callout_init_mtx(&sc->sc_led_ch, &sc->sc_mtx, 0);
 TASK_INIT(&sc->sc_led_task, 0, urtw_ledtask, sc);
 TASK_INIT(&sc->sc_updateslot_task, 0, urtw_updateslottask, sc);
 callout_init(&sc->sc_watchdog_ch, 0);
 mbufq_init(&sc->sc_snd, ifqmaxlen);

 if (sc->sc_flags & URTW_RTL8187B) {
  setup_start = urtw_8187b_usbconfig;
  n_setup = URTW_8187B_N_XFERS;
 } else {
  setup_start = urtw_8187l_usbconfig;
  n_setup = URTW_8187L_N_XFERS;
 }

 error = usbd_transfer_setup(uaa->device, &iface_index, sc->sc_xfer,
     setup_start, n_setup, sc, &sc->sc_mtx);
 if (error) {
  device_printf(dev, "could not allocate USB transfers, "
      "err=%s\n", usbd_errstr(error));
  ret = ENXIO;
  goto fail0;
 }

 if (sc->sc_flags & URTW_RTL8187B) {
  sc->sc_tx_dma_buf =
      usbd_xfer_get_frame_buffer(sc->sc_xfer[
      URTW_8187B_BULK_TX_BE], 0);
 } else {
  sc->sc_tx_dma_buf =
      usbd_xfer_get_frame_buffer(sc->sc_xfer[
      URTW_8187L_BULK_TX_LOW], 0);
 }

 URTW_LOCK(sc);

 urtw_read32_m(sc, URTW_RX, &data);
 sc->sc_epromtype = (data & URTW_RX_9356SEL) ? URTW_EEPROM_93C56 :
     URTW_EEPROM_93C46;

 error = urtw_get_rfchip(sc);
 if (error != 0)
  goto fail;
 error = urtw_get_macaddr(sc);
 if (error != 0)
  goto fail;
 error = urtw_get_txpwr(sc);
 if (error != 0)
  goto fail;
 error = urtw_led_init(sc);
 if (error != 0)
  goto fail;

 URTW_UNLOCK(sc);

 sc->sc_rts_retry = URTW_DEFAULT_RTS_RETRY;
 sc->sc_tx_retry = URTW_DEFAULT_TX_RETRY;
 sc->sc_currate = URTW_RIDX_CCK11;
 sc->sc_preamble_mode = urtw_preamble_mode;

 ic->ic_softc = sc;
 ic->ic_name = device_get_nameunit(dev);
 ic->ic_phytype = IEEE80211_T_OFDM;
 ic->ic_opmode = IEEE80211_M_STA;


 ic->ic_caps =
     IEEE80211_C_STA |
     IEEE80211_C_MONITOR |
     IEEE80211_C_TXPMGT |
     IEEE80211_C_SHPREAMBLE |
     IEEE80211_C_SHSLOT |
     IEEE80211_C_BGSCAN |
     IEEE80211_C_WPA;



 urtw_getradiocaps(ic, IEEE80211_CHAN_MAX, &ic->ic_nchans,
     ic->ic_channels);

 ieee80211_ifattach(ic);
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

 ieee80211_radiotap_attach(ic,
     &sc->sc_txtap.wt_ihdr, sizeof(sc->sc_txtap),
     URTW_TX_RADIOTAP_PRESENT,
     &sc->sc_rxtap.wr_ihdr, sizeof(sc->sc_rxtap),
     URTW_RX_RADIOTAP_PRESENT);

 urtw_sysctl_node(sc);

 if (bootverbose)
  ieee80211_announce(ic);
 return (0);

fail:
 URTW_UNLOCK(sc);
 usbd_transfer_unsetup(sc->sc_xfer, (sc->sc_flags & URTW_RTL8187B) ?
     URTW_8187B_N_XFERS : URTW_8187L_N_XFERS);
fail0:
 return (ret);
}
