
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int wr_ihdr; } ;
struct TYPE_5__ {int wt_ihdr; } ;
struct ieee80211com {int ic_caps; int ic_transmit; int ic_parent; void* ic_update_promisc; void* ic_update_mcast; int ic_vap_delete; int ic_vap_create; int ic_set_channel; int (* ic_getradiocaps ) (struct ieee80211com*,int ,int *,int ) ;int ic_scan_end; int ic_scan_start; int ic_raw_xmit; int ic_channels; int ic_nchans; int ic_opmode; int ic_phytype; int ic_name; struct zyd_softc* ic_softc; } ;
struct zyd_softc {TYPE_3__ sc_rxtap; TYPE_2__ sc_txtap; int sc_dev; int sc_mtx; int sc_xfer; int sc_snd; int sc_rqh; int sc_macrev; int sc_udev; struct ieee80211com sc_ic; } ;
struct TYPE_4__ {int bcdDevice; } ;
struct usb_attach_arg {int device; TYPE_1__ info; } ;
typedef int device_t ;


 int EINVAL ;
 int ENXIO ;
 int IEEE80211_CHAN_MAX ;
 int IEEE80211_C_BGSCAN ;
 int IEEE80211_C_MONITOR ;
 int IEEE80211_C_SHPREAMBLE ;
 int IEEE80211_C_SHSLOT ;
 int IEEE80211_C_STA ;
 int IEEE80211_C_WPA ;
 int IEEE80211_M_STA ;
 int IEEE80211_T_OFDM ;
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 int STAILQ_INIT (int *) ;
 int USB_GET_DRIVER_INFO (struct usb_attach_arg*) ;
 int ZYD_IFACE_INDEX ;
 int ZYD_LOCK (struct zyd_softc*) ;
 int ZYD_N_TRANSFER ;
 int ZYD_RX_RADIOTAP_PRESENT ;
 int ZYD_TX_RADIOTAP_PRESENT ;
 int ZYD_UNLOCK (struct zyd_softc*) ;
 scalar_t__ bootverbose ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 int device_get_nameunit (int ) ;
 struct zyd_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int device_set_usb_desc (int ) ;
 int ieee80211_announce (struct ieee80211com*) ;
 int ieee80211_ifattach (struct ieee80211com*) ;
 int ieee80211_radiotap_attach (struct ieee80211com*,int *,int,int ,int *,int,int ) ;
 int ifqmaxlen ;
 int mbufq_init (int *,int ) ;
 int mtx_init (int *,int ,int ,int ) ;
 int usbd_errstr (int) ;
 int usbd_transfer_setup (int ,int *,int ,int ,int ,struct zyd_softc*,int *) ;
 int zyd_config ;
 int zyd_detach (int ) ;
 int zyd_get_macaddr (struct zyd_softc*) ;
 int zyd_getradiocaps (struct ieee80211com*,int ,int *,int ) ;
 int zyd_parent ;
 int zyd_raw_xmit ;
 int zyd_scan_end ;
 int zyd_scan_start ;
 int zyd_set_channel ;
 int zyd_transmit ;
 void* zyd_update_mcast ;
 int zyd_vap_create ;
 int zyd_vap_delete ;

__attribute__((used)) static int
zyd_attach(device_t dev)
{
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 struct zyd_softc *sc = device_get_softc(dev);
 struct ieee80211com *ic = &sc->sc_ic;
 uint8_t iface_index;
 int error;

 if (uaa->info.bcdDevice < 0x4330) {
  device_printf(dev, "device version mismatch: 0x%X "
      "(only >= 43.30 supported)\n",
      uaa->info.bcdDevice);
  return (EINVAL);
 }

 device_set_usb_desc(dev);
 sc->sc_dev = dev;
 sc->sc_udev = uaa->device;
 sc->sc_macrev = USB_GET_DRIVER_INFO(uaa);

 mtx_init(&sc->sc_mtx, device_get_nameunit(sc->sc_dev),
     MTX_NETWORK_LOCK, MTX_DEF);
 STAILQ_INIT(&sc->sc_rqh);
 mbufq_init(&sc->sc_snd, ifqmaxlen);

 iface_index = ZYD_IFACE_INDEX;
 error = usbd_transfer_setup(uaa->device,
     &iface_index, sc->sc_xfer, zyd_config,
     ZYD_N_TRANSFER, sc, &sc->sc_mtx);
 if (error) {
  device_printf(dev, "could not allocate USB transfers, "
      "err=%s\n", usbd_errstr(error));
  goto detach;
 }

 ZYD_LOCK(sc);
 if ((error = zyd_get_macaddr(sc)) != 0) {
  device_printf(sc->sc_dev, "could not read EEPROM\n");
  ZYD_UNLOCK(sc);
  goto detach;
 }
 ZYD_UNLOCK(sc);

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

 zyd_getradiocaps(ic, IEEE80211_CHAN_MAX, &ic->ic_nchans,
     ic->ic_channels);

 ieee80211_ifattach(ic);
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

 ieee80211_radiotap_attach(ic,
     &sc->sc_txtap.wt_ihdr, sizeof(sc->sc_txtap),
  ZYD_TX_RADIOTAP_PRESENT,
     &sc->sc_rxtap.wr_ihdr, sizeof(sc->sc_rxtap),
  ZYD_RX_RADIOTAP_PRESENT);

 if (bootverbose)
  ieee80211_announce(ic);

 return (0);

detach:
 zyd_detach(dev);
 return (ENXIO);
}
