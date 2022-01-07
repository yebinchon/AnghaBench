
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int wr_ihdr; } ;
struct TYPE_5__ {int wt_ihdr; } ;
struct TYPE_4__ {int wme_update; } ;
struct ieee80211com {int ic_caps; int ic_vap_delete; int ic_vap_create; int ic_parent; int ic_transmit; int ic_raw_xmit; int ic_update_promisc; int ic_updateslot; int ic_set_channel; int (* ic_getradiocaps ) (struct ieee80211com*,int ,int *,int ) ;int ic_scan_end; int ic_scan_start; TYPE_1__ ic_wme; int ic_channels; int ic_nchans; int ic_phytype; int ic_opmode; int ic_name; struct rt2661_softc* ic_softc; int ic_macaddr; } ;
struct rt2661_softc {int sc_id; int sc_mtx; int * txq; int mgtq; int sc_debug; TYPE_3__ sc_rxtap; TYPE_2__ sc_txtap; int sc_dev; int rxq; int rf_rev; int sc_snd; int watchdog_ch; struct ieee80211com sc_ic; } ;
typedef int device_t ;


 int CTLFLAG_RW ;
 int DELAY (int) ;
 int EIO ;
 int IEEE80211_CHAN_MAX ;
 int IEEE80211_C_AHDEMO ;
 int IEEE80211_C_BGSCAN ;
 int IEEE80211_C_HOSTAP ;
 int IEEE80211_C_IBSS ;
 int IEEE80211_C_MBSS ;
 int IEEE80211_C_MONITOR ;
 int IEEE80211_C_SHPREAMBLE ;
 int IEEE80211_C_SHSLOT ;
 int IEEE80211_C_STA ;
 int IEEE80211_C_TXFRAG ;
 int IEEE80211_C_WDS ;
 int IEEE80211_C_WME ;
 int IEEE80211_C_WPA ;
 int IEEE80211_M_STA ;
 int IEEE80211_T_OFDM ;
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 int MTX_RECURSE ;
 int OID_AUTO ;
 int RAL_READ (struct rt2661_softc*,int ) ;
 int RT2661_MAC_CSR0 ;
 int RT2661_MGT_RING_COUNT ;
 int RT2661_RX_RADIOTAP_PRESENT ;
 int RT2661_RX_RING_COUNT ;
 int RT2661_TX_RADIOTAP_PRESENT ;
 int RT2661_TX_RING_COUNT ;
 int SYSCTL_ADD_INT (int ,int ,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 scalar_t__ bootverbose ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_get_nameunit (int ) ;
 struct rt2661_softc* device_get_softc (int ) ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int device_printf (int ,char*,...) ;
 int ieee80211_announce (struct ieee80211com*) ;
 int ieee80211_ifattach (struct ieee80211com*) ;
 int ieee80211_radiotap_attach (struct ieee80211com*,int *,int,int ,int *,int,int ) ;
 int ifqmaxlen ;
 int mbufq_init (int *,int ) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,int ,int ,int) ;
 int rt2661_alloc_rx_ring (struct rt2661_softc*,int *,int ) ;
 int rt2661_alloc_tx_ring (struct rt2661_softc*,int *,int ) ;
 int rt2661_free_tx_ring (struct rt2661_softc*,int *) ;
 int rt2661_get_rf (int ) ;
 int rt2661_getradiocaps (struct ieee80211com*,int ,int *,int ) ;
 int rt2661_parent ;
 int rt2661_raw_xmit ;
 int rt2661_read_eeprom (struct rt2661_softc*,int ) ;
 int rt2661_scan_end ;
 int rt2661_scan_start ;
 int rt2661_set_channel ;
 int rt2661_transmit ;
 int rt2661_update_promisc ;
 int rt2661_update_slot ;
 int rt2661_vap_create ;
 int rt2661_vap_delete ;
 int rt2661_wme_update ;

int
rt2661_attach(device_t dev, int id)
{
 struct rt2661_softc *sc = device_get_softc(dev);
 struct ieee80211com *ic = &sc->sc_ic;
 uint32_t val;
 int error, ac, ntries;

 sc->sc_id = id;
 sc->sc_dev = dev;

 mtx_init(&sc->sc_mtx, device_get_nameunit(dev), MTX_NETWORK_LOCK,
     MTX_DEF | MTX_RECURSE);

 callout_init_mtx(&sc->watchdog_ch, &sc->sc_mtx, 0);
 mbufq_init(&sc->sc_snd, ifqmaxlen);


 for (ntries = 0; ntries < 1000; ntries++) {
  if ((val = RAL_READ(sc, RT2661_MAC_CSR0)) != 0)
   break;
  DELAY(1000);
 }
 if (ntries == 1000) {
  device_printf(sc->sc_dev,
      "timeout waiting for NIC to initialize\n");
  error = EIO;
  goto fail1;
 }


 rt2661_read_eeprom(sc, ic->ic_macaddr);

 device_printf(dev, "MAC/BBP RT%X, RF %s\n", val,
     rt2661_get_rf(sc->rf_rev));




 for (ac = 0; ac < 4; ac++) {
  error = rt2661_alloc_tx_ring(sc, &sc->txq[ac],
      RT2661_TX_RING_COUNT);
  if (error != 0) {
   device_printf(sc->sc_dev,
       "could not allocate Tx ring %d\n", ac);
   goto fail2;
  }
 }

 error = rt2661_alloc_tx_ring(sc, &sc->mgtq, RT2661_MGT_RING_COUNT);
 if (error != 0) {
  device_printf(sc->sc_dev, "could not allocate Mgt ring\n");
  goto fail2;
 }

 error = rt2661_alloc_rx_ring(sc, &sc->rxq, RT2661_RX_RING_COUNT);
 if (error != 0) {
  device_printf(sc->sc_dev, "could not allocate Rx ring\n");
  goto fail3;
 }

 ic->ic_softc = sc;
 ic->ic_name = device_get_nameunit(dev);
 ic->ic_opmode = IEEE80211_M_STA;
 ic->ic_phytype = IEEE80211_T_OFDM;


 ic->ic_caps =
    IEEE80211_C_STA
  | IEEE80211_C_IBSS
  | IEEE80211_C_HOSTAP
  | IEEE80211_C_MONITOR
  | IEEE80211_C_AHDEMO
  | IEEE80211_C_WDS
  | IEEE80211_C_MBSS
  | IEEE80211_C_SHPREAMBLE
  | IEEE80211_C_SHSLOT
  | IEEE80211_C_WPA
  | IEEE80211_C_BGSCAN




  ;

 rt2661_getradiocaps(ic, IEEE80211_CHAN_MAX, &ic->ic_nchans,
     ic->ic_channels);

 ieee80211_ifattach(ic);



 ic->ic_scan_start = rt2661_scan_start;
 ic->ic_scan_end = rt2661_scan_end;
 ic->ic_getradiocaps = rt2661_getradiocaps;
 ic->ic_set_channel = rt2661_set_channel;
 ic->ic_updateslot = rt2661_update_slot;
 ic->ic_update_promisc = rt2661_update_promisc;
 ic->ic_raw_xmit = rt2661_raw_xmit;
 ic->ic_transmit = rt2661_transmit;
 ic->ic_parent = rt2661_parent;
 ic->ic_vap_create = rt2661_vap_create;
 ic->ic_vap_delete = rt2661_vap_delete;

 ieee80211_radiotap_attach(ic,
     &sc->sc_txtap.wt_ihdr, sizeof(sc->sc_txtap),
  RT2661_TX_RADIOTAP_PRESENT,
     &sc->sc_rxtap.wr_ihdr, sizeof(sc->sc_rxtap),
  RT2661_RX_RADIOTAP_PRESENT);






 if (bootverbose)
  ieee80211_announce(ic);

 return 0;

fail3: rt2661_free_tx_ring(sc, &sc->mgtq);
fail2: while (--ac >= 0)
  rt2661_free_tx_ring(sc, &sc->txq[ac]);
fail1: mtx_destroy(&sc->sc_mtx);
 return error;
}
