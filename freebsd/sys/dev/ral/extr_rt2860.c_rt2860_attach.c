
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
struct ieee80211com {int ic_caps; int ic_vap_delete; int ic_vap_create; int ic_parent; int ic_transmit; int ic_newassoc; int ic_node_free; int ic_raw_xmit; int ic_update_promisc; int ic_updateslot; int ic_set_channel; int (* ic_getradiocaps ) (struct ieee80211com*,int ,int *,int ) ;int ic_scan_end; int ic_scan_start; TYPE_1__ ic_wme; int ic_channels; int ic_nchans; int ic_phytype; int ic_opmode; int ic_name; struct rt2860_softc* ic_softc; int ic_macaddr; } ;
struct rt2860_softc {int mac_ver; int mac_rev; int mgtqid; int sc_mtx; int * txq; int rxq; scalar_t__ sc_debug; TYPE_3__ sc_rxtap; TYPE_2__ sc_txtap; int sc_node_free; int sc_dev; int nrxchains; int ntxchains; int rf_rev; int sc_flags; int sc_snd; int watchdog_ch; struct ieee80211com sc_ic; } ;
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
 int IEEE80211_C_WDS ;
 int IEEE80211_C_WME ;
 int IEEE80211_C_WPA ;
 int IEEE80211_M_STA ;
 int IEEE80211_T_OFDM ;
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 int MTX_RECURSE ;
 int OID_AUTO ;
 int RAL_READ (struct rt2860_softc*,int ) ;
 int RT2860_ADVANCED_PS ;
 int RT2860_ASIC_VER_ID ;
 int RT2860_RX_RADIOTAP_PRESENT ;
 int RT2860_TX_RADIOTAP_PRESENT ;
 int SYSCTL_ADD_INT (int ,int ,int ,char*,int ,scalar_t__*,int ,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int WME_AC_VO ;
 scalar_t__ bootverbose ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_get_nameunit (int ) ;
 struct rt2860_softc* device_get_softc (int ) ;
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
 int rt2860_alloc_rx_ring (struct rt2860_softc*,int *) ;
 int rt2860_alloc_tx_pool (struct rt2860_softc*) ;
 int rt2860_alloc_tx_ring (struct rt2860_softc*,int *) ;
 int rt2860_free_rx_ring (struct rt2860_softc*,int *) ;
 int rt2860_free_tx_ring (struct rt2860_softc*,int *) ;
 int rt2860_get_rf (int ) ;
 int rt2860_getradiocaps (struct ieee80211com*,int ,int *,int ) ;
 int rt2860_newassoc ;
 int rt2860_node_free ;
 int rt2860_parent ;
 int rt2860_raw_xmit ;
 int rt2860_read_eeprom (struct rt2860_softc*,int ) ;
 int rt2860_scan_end ;
 int rt2860_scan_start ;
 int rt2860_set_channel ;
 int rt2860_transmit ;
 int rt2860_update_promisc ;
 int rt2860_updateedca ;
 int rt2860_updateslot ;
 int rt2860_vap_create ;
 int rt2860_vap_delete ;

int
rt2860_attach(device_t dev, int id)
{
 struct rt2860_softc *sc = device_get_softc(dev);
 struct ieee80211com *ic = &sc->sc_ic;
 uint32_t tmp;
 int error, ntries, qid;

 sc->sc_dev = dev;
 sc->sc_debug = 0;

 mtx_init(&sc->sc_mtx, device_get_nameunit(dev), MTX_NETWORK_LOCK,
     MTX_DEF | MTX_RECURSE);

 callout_init_mtx(&sc->watchdog_ch, &sc->sc_mtx, 0);
 mbufq_init(&sc->sc_snd, ifqmaxlen);


 for (ntries = 0; ntries < 100; ntries++) {
  tmp = RAL_READ(sc, RT2860_ASIC_VER_ID);
  if (tmp != 0 && tmp != 0xffffffff)
   break;
  DELAY(10);
 }
 if (ntries == 100) {
  device_printf(sc->sc_dev,
      "timeout waiting for NIC to initialize\n");
  error = EIO;
  goto fail1;
 }
 sc->mac_ver = tmp >> 16;
 sc->mac_rev = tmp & 0xffff;

 if (sc->mac_ver != 0x2860 &&
     (id == 0x0681 || id == 0x0781 || id == 0x1059))
  sc->sc_flags |= RT2860_ADVANCED_PS;


 rt2860_read_eeprom(sc, ic->ic_macaddr);
 device_printf(sc->sc_dev, "MAC/BBP RT%X (rev 0x%04X), "
     "RF %s (MIMO %dT%dR), address %6D\n",
     sc->mac_ver, sc->mac_rev, rt2860_get_rf(sc->rf_rev),
     sc->ntxchains, sc->nrxchains, ic->ic_macaddr, ":");




 for (qid = 0; qid < 6; qid++) {
  if ((error = rt2860_alloc_tx_ring(sc, &sc->txq[qid])) != 0) {
   device_printf(sc->sc_dev,
       "could not allocate Tx ring %d\n", qid);
   goto fail2;
  }
 }

 if ((error = rt2860_alloc_rx_ring(sc, &sc->rxq)) != 0) {
  device_printf(sc->sc_dev, "could not allocate Rx ring\n");
  goto fail2;
 }

 if ((error = rt2860_alloc_tx_pool(sc)) != 0) {
  device_printf(sc->sc_dev, "could not allocate Tx pool\n");
  goto fail3;
 }


 sc->mgtqid = (sc->mac_ver == 0x2860 && sc->mac_rev == 0x0100) ?
     WME_AC_VO : 5;

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



  | IEEE80211_C_WME
  ;

 rt2860_getradiocaps(ic, IEEE80211_CHAN_MAX, &ic->ic_nchans,
     ic->ic_channels);

 ieee80211_ifattach(ic);

 ic->ic_wme.wme_update = rt2860_updateedca;
 ic->ic_scan_start = rt2860_scan_start;
 ic->ic_scan_end = rt2860_scan_end;
 ic->ic_getradiocaps = rt2860_getradiocaps;
 ic->ic_set_channel = rt2860_set_channel;
 ic->ic_updateslot = rt2860_updateslot;
 ic->ic_update_promisc = rt2860_update_promisc;
 ic->ic_raw_xmit = rt2860_raw_xmit;
 sc->sc_node_free = ic->ic_node_free;
 ic->ic_node_free = rt2860_node_free;
 ic->ic_newassoc = rt2860_newassoc;
 ic->ic_transmit = rt2860_transmit;
 ic->ic_parent = rt2860_parent;
 ic->ic_vap_create = rt2860_vap_create;
 ic->ic_vap_delete = rt2860_vap_delete;

 ieee80211_radiotap_attach(ic,
     &sc->sc_txtap.wt_ihdr, sizeof(sc->sc_txtap),
  RT2860_TX_RADIOTAP_PRESENT,
     &sc->sc_rxtap.wr_ihdr, sizeof(sc->sc_rxtap),
  RT2860_RX_RADIOTAP_PRESENT);






 if (bootverbose)
  ieee80211_announce(ic);

 return 0;

fail3: rt2860_free_rx_ring(sc, &sc->rxq);
fail2: while (--qid >= 0)
  rt2860_free_tx_ring(sc, &sc->txq[qid]);
fail1: mtx_destroy(&sc->sc_mtx);
 return error;
}
