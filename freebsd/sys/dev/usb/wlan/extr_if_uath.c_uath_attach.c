
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ usb_error_t ;
typedef int uint8_t ;
struct usb_attach_arg {int device; } ;
struct TYPE_6__ {int wr_ihdr; } ;
struct TYPE_5__ {int wt_ihdr; } ;
struct TYPE_4__ {int analog5GhzRevision; int regDomain; } ;
struct ieee80211com {int ic_caps; int ic_parent; int ic_transmit; int ic_update_promisc; int ic_update_mcast; int ic_vap_delete; int ic_vap_create; int ic_set_channel; int ic_scan_end; int ic_scan_start; int ic_raw_xmit; int ic_opmode; int ic_phytype; int ic_name; struct uath_softc* ic_softc; int ic_macaddr; } ;
struct uath_softc {int * sc_xfer; int sc_cmd; TYPE_3__ sc_rxtap; TYPE_2__ sc_txtap; TYPE_1__ sc_devcap; int sc_dev; void* sc_tx_dma_buf; void* sc_cmd_dma_buf; int sc_mtx; int sc_snd; int watchdog_ch; int stat_ch; int sc_debug; int sc_udev; struct ieee80211com sc_ic; } ;
typedef int device_t ;
typedef int bands ;


 int IEEE80211_C_BGSCAN ;
 int IEEE80211_C_MONITOR ;
 int IEEE80211_C_SHPREAMBLE ;
 int IEEE80211_C_SHSLOT ;
 int IEEE80211_C_STA ;
 int IEEE80211_C_TXFRAG ;
 int IEEE80211_C_TXPMGT ;
 int IEEE80211_C_WPA ;
 int IEEE80211_MODE_11A ;
 int IEEE80211_MODE_11B ;
 int IEEE80211_MODE_11G ;
 int IEEE80211_MODE_BYTES ;
 int IEEE80211_M_STA ;
 int IEEE80211_T_OFDM ;
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 size_t UATH_BULK_TX ;
 int UATH_IFACE_INDEX ;
 size_t UATH_INTR_TX ;
 int UATH_LOCK (struct uath_softc*) ;
 int UATH_N_XFERS ;
 int UATH_RX_RADIOTAP_PRESENT ;
 int UATH_TX_RADIOTAP_PRESENT ;
 int UATH_UNLOCK (struct uath_softc*) ;
 scalar_t__ bootverbose ;
 int callout_init (int *,int ) ;
 int callout_init_mtx (int *,int *,int ) ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 int device_get_nameunit (int ) ;
 struct uath_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int device_set_usb_desc (int ) ;
 int ieee80211_announce (struct ieee80211com*) ;
 int ieee80211_ifattach (struct ieee80211com*) ;
 int ieee80211_init_channels (struct ieee80211com*,int *,int *) ;
 int ieee80211_radiotap_attach (struct ieee80211com*,int *,int,int ,int *,int,int ) ;
 int ifqmaxlen ;
 int mbufq_init (int *,int ) ;
 int memset (int *,int ,int) ;
 int mtx_init (int *,int ,int ,int ) ;
 int setbit (int *,int ) ;
 scalar_t__ uath_alloc_cmd_list (struct uath_softc*,int ) ;
 scalar_t__ uath_alloc_rx_data_list (struct uath_softc*) ;
 scalar_t__ uath_alloc_tx_data_list (struct uath_softc*) ;
 int uath_debug ;
 int uath_free_cmd_list (struct uath_softc*,int ) ;
 scalar_t__ uath_get_devcap (struct uath_softc*) ;
 scalar_t__ uath_get_devstatus (struct uath_softc*,int ) ;
 scalar_t__ uath_host_available (struct uath_softc*) ;
 int uath_parent ;
 int uath_raw_xmit ;
 int uath_regdomain ;
 int uath_scan_end ;
 int uath_scan_start ;
 int uath_set_channel ;
 int uath_sysctl_node (struct uath_softc*) ;
 int uath_transmit ;
 int uath_update_mcast ;
 int uath_update_promisc ;
 int uath_usbconfig ;
 int uath_vap_create ;
 int uath_vap_delete ;
 int usbd_errstr (scalar_t__) ;
 scalar_t__ usbd_transfer_setup (int ,int *,int *,int ,int ,struct uath_softc*,int *) ;
 int usbd_transfer_unsetup (int *,int ) ;
 void* usbd_xfer_get_frame_buffer (int ,int ) ;

__attribute__((used)) static int
uath_attach(device_t dev)
{
 struct uath_softc *sc = device_get_softc(dev);
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 struct ieee80211com *ic = &sc->sc_ic;
 uint8_t bands[IEEE80211_MODE_BYTES];
 uint8_t iface_index = UATH_IFACE_INDEX;
 usb_error_t error;

 sc->sc_dev = dev;
 sc->sc_udev = uaa->device;



 device_set_usb_desc(dev);




 mtx_init(&sc->sc_mtx, device_get_nameunit(sc->sc_dev), MTX_NETWORK_LOCK,
     MTX_DEF);
 callout_init(&sc->stat_ch, 0);
 callout_init_mtx(&sc->watchdog_ch, &sc->sc_mtx, 0);
 mbufq_init(&sc->sc_snd, ifqmaxlen);

 error = usbd_transfer_setup(uaa->device, &iface_index, sc->sc_xfer,
     uath_usbconfig, UATH_N_XFERS, sc, &sc->sc_mtx);
 if (error) {
  device_printf(dev, "could not allocate USB transfers, "
      "err=%s\n", usbd_errstr(error));
  goto fail;
 }

 sc->sc_cmd_dma_buf =
     usbd_xfer_get_frame_buffer(sc->sc_xfer[UATH_INTR_TX], 0);
 sc->sc_tx_dma_buf =
     usbd_xfer_get_frame_buffer(sc->sc_xfer[UATH_BULK_TX], 0);




 error = uath_alloc_cmd_list(sc, sc->sc_cmd);
 if (error != 0) {
  device_printf(sc->sc_dev,
      "could not allocate Tx command list\n");
  goto fail1;
 }




 UATH_LOCK(sc);
 error = uath_host_available(sc);
 if (error != 0) {
  device_printf(sc->sc_dev, "could not initialize adapter\n");
  goto fail2;
 }
 error = uath_get_devcap(sc);
 if (error != 0) {
  device_printf(sc->sc_dev,
      "could not get device capabilities\n");
  goto fail2;
 }
 UATH_UNLOCK(sc);


 uath_sysctl_node(sc);

 UATH_LOCK(sc);
 error = uath_get_devstatus(sc, ic->ic_macaddr);
 if (error != 0) {
  device_printf(sc->sc_dev, "could not get device status\n");
  goto fail2;
 }




 error = uath_alloc_rx_data_list(sc);
 if (error != 0) {
  device_printf(sc->sc_dev, "could not allocate Rx data list\n");
  goto fail2;
 }
 error = uath_alloc_tx_data_list(sc);
 if (error != 0) {
  device_printf(sc->sc_dev, "could not allocate Tx data list\n");
  goto fail2;
 }
 UATH_UNLOCK(sc);

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
     IEEE80211_C_WPA |
     IEEE80211_C_BGSCAN |
     IEEE80211_C_TXFRAG;


 uath_regdomain = sc->sc_devcap.regDomain;

 memset(bands, 0, sizeof(bands));
 setbit(bands, IEEE80211_MODE_11B);
 setbit(bands, IEEE80211_MODE_11G);
 if ((sc->sc_devcap.analog5GhzRevision & 0xf0) == 0x30)
  setbit(bands, IEEE80211_MODE_11A);

 ieee80211_init_channels(ic, ((void*)0), bands);

 ieee80211_ifattach(ic);
 ic->ic_raw_xmit = uath_raw_xmit;
 ic->ic_scan_start = uath_scan_start;
 ic->ic_scan_end = uath_scan_end;
 ic->ic_set_channel = uath_set_channel;
 ic->ic_vap_create = uath_vap_create;
 ic->ic_vap_delete = uath_vap_delete;
 ic->ic_update_mcast = uath_update_mcast;
 ic->ic_update_promisc = uath_update_promisc;
 ic->ic_transmit = uath_transmit;
 ic->ic_parent = uath_parent;

 ieee80211_radiotap_attach(ic,
     &sc->sc_txtap.wt_ihdr, sizeof(sc->sc_txtap),
  UATH_TX_RADIOTAP_PRESENT,
     &sc->sc_rxtap.wr_ihdr, sizeof(sc->sc_rxtap),
  UATH_RX_RADIOTAP_PRESENT);

 if (bootverbose)
  ieee80211_announce(ic);

 return (0);

fail2: UATH_UNLOCK(sc);
 uath_free_cmd_list(sc, sc->sc_cmd);
fail1: usbd_transfer_unsetup(sc->sc_xfer, UATH_N_XFERS);
fail:
 return (error);
}
