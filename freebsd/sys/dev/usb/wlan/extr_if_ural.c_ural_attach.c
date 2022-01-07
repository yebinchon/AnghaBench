
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
struct ieee80211com {int ic_caps; int ic_vap_delete; int ic_vap_create; int ic_transmit; int ic_parent; int ic_set_channel; int (* ic_getradiocaps ) (struct ieee80211com*,int ,int *,int ) ;int ic_scan_end; int ic_scan_start; int ic_raw_xmit; int ic_update_promisc; int ic_channels; int ic_nchans; int ic_phytype; int ic_name; struct ural_softc* ic_softc; } ;
struct ural_softc {TYPE_2__ sc_rxtap; TYPE_1__ sc_txtap; int rf_rev; int asic_rev; int sc_mtx; int sc_xfer; int sc_snd; int sc_dev; int sc_udev; struct ieee80211com sc_ic; } ;
typedef int device_t ;


 int ENXIO ;
 int IEEE80211_CHAN_MAX ;
 int IEEE80211_C_BGSCAN ;
 int IEEE80211_C_HOSTAP ;
 int IEEE80211_C_IBSS ;
 int IEEE80211_C_MONITOR ;
 int IEEE80211_C_SHPREAMBLE ;
 int IEEE80211_C_SHSLOT ;
 int IEEE80211_C_STA ;
 int IEEE80211_C_TXPMGT ;
 int IEEE80211_C_WPA ;
 int IEEE80211_T_OFDM ;
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 int RAL_IFACE_INDEX ;
 int RAL_LOCK (struct ural_softc*) ;
 int RAL_MAC_CSR0 ;
 int RAL_RX_RADIOTAP_PRESENT ;
 int RAL_TX_RADIOTAP_PRESENT ;
 int RAL_UNLOCK (struct ural_softc*) ;
 int URAL_N_TRANSFER ;
 scalar_t__ bootverbose ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 int device_get_nameunit (int ) ;
 struct ural_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int ,...) ;
 int device_set_usb_desc (int ) ;
 int ieee80211_announce (struct ieee80211com*) ;
 int ieee80211_ifattach (struct ieee80211com*) ;
 int ieee80211_radiotap_attach (struct ieee80211com*,int *,int,int ,int *,int,int ) ;
 int ifqmaxlen ;
 int mbufq_init (int *,int ) ;
 int mtx_init (int *,int ,int ,int ) ;
 int ural_config ;
 int ural_detach (int ) ;
 int ural_get_rf (int ) ;
 int ural_getradiocaps (struct ieee80211com*,int ,int *,int ) ;
 int ural_parent ;
 int ural_raw_xmit ;
 int ural_read (struct ural_softc*,int ) ;
 int ural_read_eeprom (struct ural_softc*) ;
 int ural_scan_end ;
 int ural_scan_start ;
 int ural_set_channel ;
 int ural_transmit ;
 int ural_update_promisc ;
 int ural_vap_create ;
 int ural_vap_delete ;
 int usbd_errstr (int) ;
 int usbd_transfer_setup (int ,int *,int ,int ,int ,struct ural_softc*,int *) ;

__attribute__((used)) static int
ural_attach(device_t self)
{
 struct usb_attach_arg *uaa = device_get_ivars(self);
 struct ural_softc *sc = device_get_softc(self);
 struct ieee80211com *ic = &sc->sc_ic;
 uint8_t iface_index;
 int error;

 device_set_usb_desc(self);
 sc->sc_udev = uaa->device;
 sc->sc_dev = self;

 mtx_init(&sc->sc_mtx, device_get_nameunit(self),
     MTX_NETWORK_LOCK, MTX_DEF);
 mbufq_init(&sc->sc_snd, ifqmaxlen);

 iface_index = RAL_IFACE_INDEX;
 error = usbd_transfer_setup(uaa->device,
     &iface_index, sc->sc_xfer, ural_config,
     URAL_N_TRANSFER, sc, &sc->sc_mtx);
 if (error) {
  device_printf(self, "could not allocate USB transfers, "
      "err=%s\n", usbd_errstr(error));
  goto detach;
 }

 RAL_LOCK(sc);

 sc->asic_rev = ural_read(sc, RAL_MAC_CSR0);


 ural_read_eeprom(sc);
 RAL_UNLOCK(sc);

 device_printf(self, "MAC/BBP RT2570 (rev 0x%02x), RF %s\n",
     sc->asic_rev, ural_get_rf(sc->rf_rev));

 ic->ic_softc = sc;
 ic->ic_name = device_get_nameunit(self);
 ic->ic_phytype = IEEE80211_T_OFDM;


 ic->ic_caps =
       IEEE80211_C_STA
     | IEEE80211_C_IBSS
     | IEEE80211_C_MONITOR
     | IEEE80211_C_HOSTAP
     | IEEE80211_C_TXPMGT
     | IEEE80211_C_SHPREAMBLE
     | IEEE80211_C_SHSLOT
     | IEEE80211_C_BGSCAN
     | IEEE80211_C_WPA
     ;

 ural_getradiocaps(ic, IEEE80211_CHAN_MAX, &ic->ic_nchans,
     ic->ic_channels);

 ieee80211_ifattach(ic);
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

 ieee80211_radiotap_attach(ic,
     &sc->sc_txtap.wt_ihdr, sizeof(sc->sc_txtap),
  RAL_TX_RADIOTAP_PRESENT,
     &sc->sc_rxtap.wr_ihdr, sizeof(sc->sc_rxtap),
  RAL_RX_RADIOTAP_PRESENT);

 if (bootverbose)
  ieee80211_announce(ic);

 return (0);

detach:
 ural_detach(self);
 return (ENXIO);
}
