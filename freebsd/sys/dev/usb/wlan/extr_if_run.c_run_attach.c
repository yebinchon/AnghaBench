
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct usb_attach_arg {int device; } ;
struct TYPE_6__ {int wr_ihdr; } ;
struct TYPE_5__ {int wt_ihdr; } ;
struct TYPE_4__ {int wme_update; } ;
struct ieee80211com {int ic_caps; int ic_cryptocaps; int ic_parent; int ic_transmit; int ic_vap_delete; int ic_vap_create; int ic_update_promisc; int ic_raw_xmit; TYPE_1__ ic_wme; int ic_update_mcast; int ic_updateslot; int ic_newassoc; int ic_node_alloc; int (* ic_getradiocaps ) (struct ieee80211com*,int ,int *,int ) ;int ic_set_channel; int ic_scan_end; int ic_scan_start; int ic_channels; int ic_nchans; int ic_flags_ext; int ic_flags; int ic_opmode; int ic_phytype; int ic_name; struct run_softc* ic_softc; int ic_macaddr; } ;
struct run_softc {int mac_ver; int mac_rev; int sc_mtx; int ratectl_ch; int ratectl_task; int cmdq_task; TYPE_3__ sc_rxtap; TYPE_2__ sc_txtap; int nrxchains; int ntxchains; int rf_rev; int sc_dev; int sc_xfer; int sc_snd; int sc_flags; int sc_udev; struct ieee80211com sc_ic; } ;
typedef int device_t ;


 int ENXIO ;
 int IEEE80211_CHAN_MAX ;
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
 int IEEE80211_FEXT_SWBMISS ;
 int IEEE80211_F_DATAPAD ;
 int IEEE80211_M_STA ;
 int IEEE80211_T_OFDM ;
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 int RT2860_ASIC_VER_ID ;
 int RT2860_IFACE_INDEX ;
 scalar_t__ RUN_EJECT ;
 int RUN_FLAG_FWLOAD_NEEDED ;
 int RUN_LOCK (struct run_softc*) ;
 int RUN_N_XFER ;
 int RUN_RX_RADIOTAP_PRESENT ;
 int RUN_TX_RADIOTAP_PRESENT ;
 int RUN_UNLOCK (struct run_softc*) ;
 int TASK_INIT (int *,int ,int ,struct run_softc*) ;
 scalar_t__ USB_GET_DRIVER_INFO (struct usb_attach_arg*) ;
 scalar_t__ bootverbose ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 int device_get_nameunit (int ) ;
 struct run_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int device_set_usb_desc (int ) ;
 int ether_sprintf (int ) ;
 int ieee80211_announce (struct ieee80211com*) ;
 int ieee80211_ifattach (struct ieee80211com*) ;
 int ieee80211_radiotap_attach (struct ieee80211com*,int *,int,int ,int *,int,int ) ;
 int ifqmaxlen ;
 int mbufq_init (int *,int ) ;
 int mtx_init (int *,int ,int ,int ) ;
 int run_cmdq_cb ;
 int run_config ;
 int run_delay (struct run_softc*,int) ;
 int run_detach (int ) ;
 int run_get_rf (int ) ;
 int run_getradiocaps (struct ieee80211com*,int ,int *,int ) ;
 int run_newassoc ;
 int run_node_alloc ;
 int run_parent ;
 int run_ratectl_cb ;
 int run_raw_xmit ;
 scalar_t__ run_read (struct run_softc*,int ,int*) ;
 int run_read_eeprom (struct run_softc*) ;
 int run_scan_end ;
 int run_scan_start ;
 int run_set_channel ;
 int run_transmit ;
 int run_update_mcast ;
 int run_update_promisc ;
 int run_updateslot ;
 int run_vap_create ;
 int run_vap_delete ;
 int run_wme_update ;
 int usb_callout_init_mtx (int *,int *,int ) ;
 int usbd_errstr (int) ;
 int usbd_transfer_setup (int ,int *,int ,int ,int ,struct run_softc*,int *) ;

__attribute__((used)) static int
run_attach(device_t self)
{
 struct run_softc *sc = device_get_softc(self);
 struct usb_attach_arg *uaa = device_get_ivars(self);
 struct ieee80211com *ic = &sc->sc_ic;
 uint32_t ver;
 uint8_t iface_index;
 int ntries, error;

 device_set_usb_desc(self);
 sc->sc_udev = uaa->device;
 sc->sc_dev = self;
 if (USB_GET_DRIVER_INFO(uaa) != RUN_EJECT)
  sc->sc_flags |= RUN_FLAG_FWLOAD_NEEDED;

 mtx_init(&sc->sc_mtx, device_get_nameunit(sc->sc_dev),
     MTX_NETWORK_LOCK, MTX_DEF);
 mbufq_init(&sc->sc_snd, ifqmaxlen);

 iface_index = RT2860_IFACE_INDEX;

 error = usbd_transfer_setup(uaa->device, &iface_index,
     sc->sc_xfer, run_config, RUN_N_XFER, sc, &sc->sc_mtx);
 if (error) {
  device_printf(self, "could not allocate USB transfers, "
      "err=%s\n", usbd_errstr(error));
  goto detach;
 }

 RUN_LOCK(sc);


 for (ntries = 0; ntries < 100; ntries++) {
  if (run_read(sc, RT2860_ASIC_VER_ID, &ver) != 0) {
   RUN_UNLOCK(sc);
   goto detach;
  }
  if (ver != 0 && ver != 0xffffffff)
   break;
  run_delay(sc, 10);
 }
 if (ntries == 100) {
  device_printf(sc->sc_dev,
      "timeout waiting for NIC to initialize\n");
  RUN_UNLOCK(sc);
  goto detach;
 }
 sc->mac_ver = ver >> 16;
 sc->mac_rev = ver & 0xffff;


 run_read_eeprom(sc);

 device_printf(sc->sc_dev,
     "MAC/BBP RT%04X (rev 0x%04X), RF %s (MIMO %dT%dR), address %s\n",
     sc->mac_ver, sc->mac_rev, run_get_rf(sc->rf_rev),
     sc->ntxchains, sc->nrxchains, ether_sprintf(ic->ic_macaddr));

 RUN_UNLOCK(sc);

 ic->ic_softc = sc;
 ic->ic_name = device_get_nameunit(self);
 ic->ic_phytype = IEEE80211_T_OFDM;
 ic->ic_opmode = IEEE80211_M_STA;


 ic->ic_caps =
     IEEE80211_C_STA |
     IEEE80211_C_MONITOR |
     IEEE80211_C_IBSS |
     IEEE80211_C_HOSTAP |
     IEEE80211_C_WDS |
     IEEE80211_C_MBSS |
     IEEE80211_C_SHPREAMBLE |
     IEEE80211_C_SHSLOT |
     IEEE80211_C_WME |
     IEEE80211_C_WPA;

 ic->ic_cryptocaps =
     IEEE80211_CRYPTO_WEP |
     IEEE80211_CRYPTO_AES_CCM |
     IEEE80211_CRYPTO_TKIPMIC |
     IEEE80211_CRYPTO_TKIP;

 ic->ic_flags |= IEEE80211_F_DATAPAD;
 ic->ic_flags_ext |= IEEE80211_FEXT_SWBMISS;

 run_getradiocaps(ic, IEEE80211_CHAN_MAX, &ic->ic_nchans,
     ic->ic_channels);

 ieee80211_ifattach(ic);

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

 ieee80211_radiotap_attach(ic,
     &sc->sc_txtap.wt_ihdr, sizeof(sc->sc_txtap),
  RUN_TX_RADIOTAP_PRESENT,
     &sc->sc_rxtap.wr_ihdr, sizeof(sc->sc_rxtap),
  RUN_RX_RADIOTAP_PRESENT);

 TASK_INIT(&sc->cmdq_task, 0, run_cmdq_cb, sc);
 TASK_INIT(&sc->ratectl_task, 0, run_ratectl_cb, sc);
 usb_callout_init_mtx(&sc->ratectl_ch, &sc->sc_mtx, 0);

 if (bootverbose)
  ieee80211_announce(ic);

 return (0);

detach:
 run_detach(self);
 return (ENXIO);
}
