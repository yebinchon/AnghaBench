
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int wr_ihdr; } ;
struct TYPE_3__ {int wt_ihdr; } ;
struct ieee80211com {int ic_caps; int ic_transmit; int ic_parent; int ic_vap_delete; int ic_vap_create; int ic_set_channel; int (* ic_getradiocaps ) (struct ieee80211com*,int ,int *,int ) ;int ic_scan_end; int ic_scan_start; int ic_update_promisc; int ic_updateslot; int ic_raw_xmit; int ic_channels; int ic_nchans; int ic_phytype; int ic_opmode; int ic_name; struct rt2560_softc* ic_softc; int ic_macaddr; } ;
struct rt2560_softc {int sc_mtx; int txq; int atimq; int prioq; int bcnq; int rx_ant; int tx_ant; int sc_debug; TYPE_2__ sc_rxtap; TYPE_1__ sc_txtap; int sc_dev; int rxq; int rf_rev; int asic_rev; int sc_snd; int watchdog_ch; struct ieee80211com sc_ic; } ;
typedef int device_t ;


 int CTLFLAG_RW ;
 int ENXIO ;
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
 int IEEE80211_C_WPA ;
 int IEEE80211_M_STA ;
 int IEEE80211_T_OFDM ;
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 int MTX_RECURSE ;
 int OID_AUTO ;
 int RAL_READ (struct rt2560_softc*,int ) ;
 int RT2560_ATIM_RING_COUNT ;
 int RT2560_BEACON_RING_COUNT ;
 int RT2560_CSR0 ;
 int RT2560_PRIO_RING_COUNT ;
 int RT2560_RX_RADIOTAP_PRESENT ;
 int RT2560_RX_RING_COUNT ;
 int RT2560_TX_RADIOTAP_PRESENT ;
 int RT2560_TX_RING_COUNT ;
 int SYSCTL_ADD_INT (int ,int ,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 scalar_t__ bootverbose ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_get_nameunit (int ) ;
 struct rt2560_softc* device_get_softc (int ) ;
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
 int rt2560_alloc_rx_ring (struct rt2560_softc*,int *,int ) ;
 int rt2560_alloc_tx_ring (struct rt2560_softc*,int *,int ) ;
 int rt2560_free_tx_ring (struct rt2560_softc*,int *) ;
 int rt2560_get_macaddr (struct rt2560_softc*,int ) ;
 int rt2560_get_rf (int ) ;
 int rt2560_getradiocaps (struct ieee80211com*,int ,int *,int ) ;
 int rt2560_parent ;
 int rt2560_raw_xmit ;
 int rt2560_read_config (struct rt2560_softc*) ;
 int rt2560_scan_end ;
 int rt2560_scan_start ;
 int rt2560_set_channel ;
 int rt2560_transmit ;
 int rt2560_update_promisc ;
 int rt2560_update_slot ;
 int rt2560_vap_create ;
 int rt2560_vap_delete ;

int
rt2560_attach(device_t dev, int id)
{
 struct rt2560_softc *sc = device_get_softc(dev);
 struct ieee80211com *ic = &sc->sc_ic;
 int error;

 sc->sc_dev = dev;

 mtx_init(&sc->sc_mtx, device_get_nameunit(dev), MTX_NETWORK_LOCK,
     MTX_DEF | MTX_RECURSE);

 callout_init_mtx(&sc->watchdog_ch, &sc->sc_mtx, 0);
 mbufq_init(&sc->sc_snd, ifqmaxlen);


 sc->asic_rev = RAL_READ(sc, RT2560_CSR0);


 rt2560_read_config(sc);

 device_printf(dev, "MAC/BBP RT2560 (rev 0x%02x), RF %s\n",
     sc->asic_rev, rt2560_get_rf(sc->rf_rev));




 error = rt2560_alloc_tx_ring(sc, &sc->txq, RT2560_TX_RING_COUNT);
 if (error != 0) {
  device_printf(sc->sc_dev, "could not allocate Tx ring\n");
  goto fail1;
 }

 error = rt2560_alloc_tx_ring(sc, &sc->atimq, RT2560_ATIM_RING_COUNT);
 if (error != 0) {
  device_printf(sc->sc_dev, "could not allocate ATIM ring\n");
  goto fail2;
 }

 error = rt2560_alloc_tx_ring(sc, &sc->prioq, RT2560_PRIO_RING_COUNT);
 if (error != 0) {
  device_printf(sc->sc_dev, "could not allocate Prio ring\n");
  goto fail3;
 }

 error = rt2560_alloc_tx_ring(sc, &sc->bcnq, RT2560_BEACON_RING_COUNT);
 if (error != 0) {
  device_printf(sc->sc_dev, "could not allocate Beacon ring\n");
  goto fail4;
 }

 error = rt2560_alloc_rx_ring(sc, &sc->rxq, RT2560_RX_RING_COUNT);
 if (error != 0) {
  device_printf(sc->sc_dev, "could not allocate Rx ring\n");
  goto fail5;
 }


 rt2560_get_macaddr(sc, ic->ic_macaddr);

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

 rt2560_getradiocaps(ic, IEEE80211_CHAN_MAX, &ic->ic_nchans,
     ic->ic_channels);

 ieee80211_ifattach(ic);
 ic->ic_raw_xmit = rt2560_raw_xmit;
 ic->ic_updateslot = rt2560_update_slot;
 ic->ic_update_promisc = rt2560_update_promisc;
 ic->ic_scan_start = rt2560_scan_start;
 ic->ic_scan_end = rt2560_scan_end;
 ic->ic_getradiocaps = rt2560_getradiocaps;
 ic->ic_set_channel = rt2560_set_channel;

 ic->ic_vap_create = rt2560_vap_create;
 ic->ic_vap_delete = rt2560_vap_delete;
 ic->ic_parent = rt2560_parent;
 ic->ic_transmit = rt2560_transmit;

 ieee80211_radiotap_attach(ic,
     &sc->sc_txtap.wt_ihdr, sizeof(sc->sc_txtap),
  RT2560_TX_RADIOTAP_PRESENT,
     &sc->sc_rxtap.wr_ihdr, sizeof(sc->sc_rxtap),
  RT2560_RX_RADIOTAP_PRESENT);
 SYSCTL_ADD_INT(device_get_sysctl_ctx(dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(dev)), OID_AUTO,
     "txantenna", CTLFLAG_RW, &sc->tx_ant, 0, "tx antenna (0=auto)");

 SYSCTL_ADD_INT(device_get_sysctl_ctx(dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(dev)), OID_AUTO,
     "rxantenna", CTLFLAG_RW, &sc->rx_ant, 0, "rx antenna (0=auto)");

 if (bootverbose)
  ieee80211_announce(ic);

 return 0;

fail5: rt2560_free_tx_ring(sc, &sc->bcnq);
fail4: rt2560_free_tx_ring(sc, &sc->prioq);
fail3: rt2560_free_tx_ring(sc, &sc->atimq);
fail2: rt2560_free_tx_ring(sc, &sc->txq);
fail1: mtx_destroy(&sc->sc_mtx);

 return ENXIO;
}
