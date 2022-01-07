
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct malo_txrec {int dummy; } ;
struct TYPE_5__ {int wr_ihdr; } ;
struct TYPE_4__ {int wt_ihdr; } ;
struct TYPE_6__ {int macaddr; int * wcbbase; int ul_fw_awakecookie; int rxdesc_write; int rxdesc_read; int wcbbase0; int fw_releasenum; int num_antenna; int regioncode; int maxnum_tx_wcb; int maxnum_mcaddr; int maxnum_wcb; int hostinterface; int hwversion; } ;
struct ieee80211com {int ic_caps; int ic_headroom; int ic_transmit; int ic_parent; int ic_set_channel; int ic_scan_end; int ic_scan_start; int ic_updateslot; int ic_raw_xmit; int ic_vap_delete; int ic_vap_create; int ic_macaddr; int ic_opmode; int ic_phytype; int ic_name; struct malo_softc* ic_softc; } ;
struct malo_softc {int malo_txantenna; int malo_rxantenna; int malo_invalid; TYPE_2__ malo_rx_th; TYPE_1__ malo_tx_th; TYPE_3__ malo_hwspecs; int malo_dev; int malo_txtask; int malo_rxtask; int malo_tq; struct malo_hal* malo_mh; int malo_dmat; int malo_io1t; int malo_io1h; int malo_snd; int malo_mtx; int malo_watchdog_timer; struct ieee80211com malo_ic; } ;
struct malo_hal {int dummy; } ;
struct ieee80211_frame {int dummy; } ;
typedef int bands ;


 int DPRINTF (struct malo_softc*,int ,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int EIO ;
 int IEEE80211_ADDR_COPY (int ,int ) ;
 int IEEE80211_C_BGSCAN ;
 int IEEE80211_C_MONITOR ;
 int IEEE80211_C_SHPREAMBLE ;
 int IEEE80211_C_SHSLOT ;
 int IEEE80211_C_STA ;
 int IEEE80211_C_TXPMGT ;
 int IEEE80211_C_WPA ;
 int IEEE80211_MODE_11B ;
 int IEEE80211_MODE_11G ;
 int IEEE80211_MODE_BYTES ;
 int IEEE80211_M_STA ;
 int IEEE80211_T_OFDM ;
 int MALO_DEBUG_FW ;
 int MALO_LOCK_INIT (struct malo_softc*) ;
 int MALO_RX_RADIOTAP_PRESENT ;
 int MALO_TX_RADIOTAP_PRESENT ;
 int M_NOWAIT ;
 int PI_NET ;
 int TASK_INIT (int *,int ,int ,struct malo_softc*) ;
 scalar_t__ bootverbose ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_get_nameunit (int ) ;
 int device_printf (int ,char*,...) ;
 int ieee80211_announce (struct ieee80211com*) ;
 int ieee80211_ifattach (struct ieee80211com*) ;
 int ieee80211_init_channels (struct ieee80211com*,int *,int *) ;
 int ieee80211_radiotap_attach (struct ieee80211com*,int *,int,int ,int *,int,int ) ;
 int ifqmaxlen ;
 int malo_announce (struct malo_softc*) ;
 int malo_dma_cleanup (struct malo_softc*) ;
 int malo_dma_setup (struct malo_softc*) ;
 struct malo_hal* malo_hal_attach (int ,int ,int ,int ,int ) ;
 int malo_hal_detach (struct malo_hal*) ;
 int malo_hal_fwload (struct malo_hal*,char*,char*) ;
 int malo_hal_gethwspecs (struct malo_hal*,TYPE_3__*) ;
 int malo_parent ;
 int malo_raw_xmit ;
 int malo_rx_proc ;
 int malo_scan_end ;
 int malo_scan_start ;
 int malo_set_channel ;
 int malo_setup_hwdma (struct malo_softc*) ;
 int malo_sysctlattach (struct malo_softc*) ;
 int malo_transmit ;
 int malo_tx_proc ;
 int malo_updateslot ;
 int malo_vap_create ;
 int malo_vap_delete ;
 int mbufq_init (int *,int ) ;
 int memset (int *,int ,int) ;
 int setbit (int *,int ) ;
 int taskqueue_create_fast (char*,int ,int ,int *) ;
 int taskqueue_start_threads (int *,int,int ,char*,int ) ;
 int taskqueue_thread_enqueue ;

int
malo_attach(uint16_t devid, struct malo_softc *sc)
{
 struct ieee80211com *ic = &sc->malo_ic;
 struct malo_hal *mh;
 int error;
 uint8_t bands[IEEE80211_MODE_BYTES];

 MALO_LOCK_INIT(sc);
 callout_init_mtx(&sc->malo_watchdog_timer, &sc->malo_mtx, 0);
 mbufq_init(&sc->malo_snd, ifqmaxlen);

 mh = malo_hal_attach(sc->malo_dev, devid,
     sc->malo_io1h, sc->malo_io1t, sc->malo_dmat);
 if (mh == ((void*)0)) {
  device_printf(sc->malo_dev, "unable to attach HAL\n");
  error = EIO;
  goto bad;
 }
 sc->malo_mh = mh;






 error = malo_hal_fwload(mh, "malo8335-h", "malo8335-m");
 if (error != 0) {
  device_printf(sc->malo_dev, "unable to setup firmware\n");
  goto bad1;
 }

 error = malo_hal_gethwspecs(mh, &sc->malo_hwspecs);
 if (error != 0) {
  device_printf(sc->malo_dev, "unable to fetch h/w specs\n");
  goto bad1;
 }

 DPRINTF(sc, MALO_DEBUG_FW,
     "malo_hal_gethwspecs: hwversion 0x%x hostif 0x%x"
     "maxnum_wcb 0x%x maxnum_mcaddr 0x%x maxnum_tx_wcb 0x%x"
     "regioncode 0x%x num_antenna 0x%x fw_releasenum 0x%x"
     "wcbbase0 0x%x rxdesc_read 0x%x rxdesc_write 0x%x"
     "ul_fw_awakecookie 0x%x w[4] = %x %x %x %x",
     sc->malo_hwspecs.hwversion,
     sc->malo_hwspecs.hostinterface, sc->malo_hwspecs.maxnum_wcb,
     sc->malo_hwspecs.maxnum_mcaddr, sc->malo_hwspecs.maxnum_tx_wcb,
     sc->malo_hwspecs.regioncode, sc->malo_hwspecs.num_antenna,
     sc->malo_hwspecs.fw_releasenum, sc->malo_hwspecs.wcbbase0,
     sc->malo_hwspecs.rxdesc_read, sc->malo_hwspecs.rxdesc_write,
     sc->malo_hwspecs.ul_fw_awakecookie,
     sc->malo_hwspecs.wcbbase[0], sc->malo_hwspecs.wcbbase[1],
     sc->malo_hwspecs.wcbbase[2], sc->malo_hwspecs.wcbbase[3]);


 memset(bands, 0, sizeof(bands));
 setbit(bands, IEEE80211_MODE_11B);
 setbit(bands, IEEE80211_MODE_11G);
 ieee80211_init_channels(ic, ((void*)0), bands);

 sc->malo_txantenna = 0x2;
 sc->malo_rxantenna = 0xffff;






 error = malo_dma_setup(sc);
 if (error != 0) {
  device_printf(sc->malo_dev,
      "failed to setup descriptors: %d\n", error);
  goto bad1;
 }
 error = malo_setup_hwdma(sc);
 if (error != 0)
  goto bad2;

 sc->malo_tq = taskqueue_create_fast("malo_taskq", M_NOWAIT,
  taskqueue_thread_enqueue, &sc->malo_tq);
 taskqueue_start_threads(&sc->malo_tq, 1, PI_NET,
  "%s taskq", device_get_nameunit(sc->malo_dev));

 TASK_INIT(&sc->malo_rxtask, 0, malo_rx_proc, sc);
 TASK_INIT(&sc->malo_txtask, 0, malo_tx_proc, sc);

 ic->ic_softc = sc;
 ic->ic_name = device_get_nameunit(sc->malo_dev);

 ic->ic_phytype = IEEE80211_T_OFDM;
 ic->ic_opmode = IEEE80211_M_STA;
 ic->ic_caps =
       IEEE80211_C_STA
     | IEEE80211_C_BGSCAN
     | IEEE80211_C_MONITOR
     | IEEE80211_C_SHPREAMBLE
     | IEEE80211_C_SHSLOT
     | IEEE80211_C_TXPMGT
     | IEEE80211_C_WPA
     ;
 IEEE80211_ADDR_COPY(ic->ic_macaddr, sc->malo_hwspecs.macaddr);







 ic->ic_headroom = sizeof(struct malo_txrec) -
  sizeof(struct ieee80211_frame);


 ieee80211_ifattach(ic);

 ic->ic_vap_create = malo_vap_create;
 ic->ic_vap_delete = malo_vap_delete;
 ic->ic_raw_xmit = malo_raw_xmit;
 ic->ic_updateslot = malo_updateslot;
 ic->ic_scan_start = malo_scan_start;
 ic->ic_scan_end = malo_scan_end;
 ic->ic_set_channel = malo_set_channel;
 ic->ic_parent = malo_parent;
 ic->ic_transmit = malo_transmit;

 sc->malo_invalid = 0;

 ieee80211_radiotap_attach(ic,
     &sc->malo_tx_th.wt_ihdr, sizeof(sc->malo_tx_th),
  MALO_TX_RADIOTAP_PRESENT,
     &sc->malo_rx_th.wr_ihdr, sizeof(sc->malo_rx_th),
  MALO_RX_RADIOTAP_PRESENT);




 malo_sysctlattach(sc);

 if (bootverbose)
  ieee80211_announce(ic);
 malo_announce(sc);

 return 0;
bad2:
 malo_dma_cleanup(sc);
bad1:
 malo_hal_detach(mh);
bad:
 sc->malo_invalid = 1;

 return error;
}
