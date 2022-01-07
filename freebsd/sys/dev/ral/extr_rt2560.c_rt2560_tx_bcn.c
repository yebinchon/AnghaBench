
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct rt2560_tx_radiotap_header {int wt_rate; int wt_antenna; scalar_t__ wt_flags; } ;
struct rt2560_tx_desc {int dummy; } ;
struct rt2560_tx_data {int map; struct ieee80211_node* ni; struct mbuf* m; } ;
struct TYPE_8__ {size_t cur; int desc_map; int desc_dmat; int data_dmat; struct rt2560_tx_data* data; struct rt2560_tx_desc* desc; } ;
struct rt2560_softc {TYPE_3__ bcnq; int tx_ant; struct rt2560_tx_radiotap_header sc_txtap; int sc_dev; } ;
struct TYPE_7__ {int len; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;
struct ieee80211vap {TYPE_1__* iv_txparms; } ;
struct ieee80211_node {int ni_chan; struct ieee80211vap* ni_vap; } ;
struct TYPE_9__ {int ds_addr; } ;
typedef TYPE_4__ bus_dma_segment_t ;
struct TYPE_6__ {int mgmtrate; } ;


 int BUS_DMASYNC_PREWRITE ;
 int BUS_DMA_NOWAIT ;
 int DPRINTFN (struct rt2560_softc*,int,char*,int ,size_t,int) ;
 int RT2560_BEACON_RING_COUNT ;
 int RT2560_MAX_SCATTER ;
 int RT2560_TX_IFS_NEWBACKOFF ;
 int RT2560_TX_TIMESTAMP ;
 int bus_dmamap_load_mbuf_sg (int ,int ,struct mbuf*,TYPE_4__*,int*,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int device_printf (int ,char*,int) ;
 size_t ieee80211_chan2mode (int ) ;
 scalar_t__ ieee80211_radiotap_active_vap (struct ieee80211vap*) ;
 int ieee80211_radiotap_tx (struct ieee80211vap*,struct mbuf*) ;
 int m_freem (struct mbuf*) ;
 int rt2560_setup_tx_desc (struct rt2560_softc*,struct rt2560_tx_desc*,int,int ,int,int ,int ) ;

__attribute__((used)) static int
rt2560_tx_bcn(struct rt2560_softc *sc, struct mbuf *m0,
    struct ieee80211_node *ni)
{
 struct ieee80211vap *vap = ni->ni_vap;
 struct rt2560_tx_desc *desc;
 struct rt2560_tx_data *data;
 bus_dma_segment_t segs[RT2560_MAX_SCATTER];
 int nsegs, rate, error;

 desc = &sc->bcnq.desc[sc->bcnq.cur];
 data = &sc->bcnq.data[sc->bcnq.cur];


 rate = vap->iv_txparms[ieee80211_chan2mode(ni->ni_chan)].mgmtrate;

 error = bus_dmamap_load_mbuf_sg(sc->bcnq.data_dmat, data->map, m0,
     segs, &nsegs, BUS_DMA_NOWAIT);
 if (error != 0) {
  device_printf(sc->sc_dev, "could not map mbuf (error %d)\n",
      error);
  m_freem(m0);
  return error;
 }

 if (ieee80211_radiotap_active_vap(vap)) {
  struct rt2560_tx_radiotap_header *tap = &sc->sc_txtap;

  tap->wt_flags = 0;
  tap->wt_rate = rate;
  tap->wt_antenna = sc->tx_ant;

  ieee80211_radiotap_tx(vap, m0);
 }

 data->m = m0;
 data->ni = ni;

 rt2560_setup_tx_desc(sc, desc, RT2560_TX_IFS_NEWBACKOFF |
     RT2560_TX_TIMESTAMP, m0->m_pkthdr.len, rate, 0, segs->ds_addr);

 DPRINTFN(sc, 10, "sending beacon frame len=%u idx=%u rate=%u\n",
     m0->m_pkthdr.len, sc->bcnq.cur, rate);

 bus_dmamap_sync(sc->bcnq.data_dmat, data->map, BUS_DMASYNC_PREWRITE);
 bus_dmamap_sync(sc->bcnq.desc_dmat, sc->bcnq.desc_map,
     BUS_DMASYNC_PREWRITE);

 sc->bcnq.cur = (sc->bcnq.cur + 1) % RT2560_BEACON_RING_COUNT;

 return 0;
}
