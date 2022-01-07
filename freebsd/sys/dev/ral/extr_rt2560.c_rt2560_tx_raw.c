
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct rt2560_tx_radiotap_header {int wt_rate; int wt_antenna; scalar_t__ wt_flags; } ;
struct rt2560_tx_desc {int dummy; } ;
struct rt2560_tx_data {int map; struct ieee80211_node* ni; struct mbuf* m; } ;
struct TYPE_6__ {size_t cur; int queued; int desc_map; int desc_dmat; int data_dmat; struct rt2560_tx_data* data; struct rt2560_tx_desc* desc; } ;
struct rt2560_softc {TYPE_2__ prioq; int tx_ant; struct rt2560_tx_radiotap_header sc_txtap; int sc_dev; } ;
struct TYPE_5__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ieee80211vap {int dummy; } ;
struct ieee80211com {int ic_rt; } ;
struct ieee80211_node {struct ieee80211vap* ni_vap; struct ieee80211com* ni_ic; } ;
struct ieee80211_bpf_params {int ibp_rate0; int ibp_flags; } ;
struct TYPE_7__ {int ds_addr; } ;
typedef TYPE_3__ bus_dma_segment_t ;


 int BUS_DMASYNC_PREWRITE ;
 int DPRINTFN (struct rt2560_softc*,int,char*,int ,size_t,int) ;
 int EINVAL ;
 int IEEE80211_BPF_CRYPTO ;
 int IEEE80211_BPF_CTS ;
 int IEEE80211_BPF_NOACK ;
 int IEEE80211_BPF_RTS ;
 int IEEE80211_PROT_CTSONLY ;
 int IEEE80211_PROT_RTSCTS ;
 int RAL_WRITE (struct rt2560_softc*,int ,int ) ;
 int RT2560_KICK_PRIO ;
 int RT2560_MAX_SCATTER ;
 int RT2560_PRIO_RING_COUNT ;
 int RT2560_TXCSR0 ;
 int RT2560_TX_ACK ;
 int RT2560_TX_IFS_SIFS ;
 int RT2560_TX_LONG_RETRY ;
 int bus_dmamap_load_mbuf_sg (int ,int ,struct mbuf*,TYPE_3__*,int*,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int device_printf (int ,char*,int) ;
 int ieee80211_isratevalid (int ,int) ;
 scalar_t__ ieee80211_radiotap_active_vap (struct ieee80211vap*) ;
 int ieee80211_radiotap_tx (struct ieee80211vap*,struct mbuf*) ;
 int m_freem (struct mbuf*) ;
 int rt2560_sendprot (struct rt2560_softc*,struct mbuf*,struct ieee80211_node*,int ,int) ;
 int rt2560_setup_tx_desc (struct rt2560_softc*,struct rt2560_tx_desc*,int,int ,int,int,int ) ;

__attribute__((used)) static int
rt2560_tx_raw(struct rt2560_softc *sc, struct mbuf *m0,
    struct ieee80211_node *ni, const struct ieee80211_bpf_params *params)
{
 struct ieee80211vap *vap = ni->ni_vap;
 struct ieee80211com *ic = ni->ni_ic;
 struct rt2560_tx_desc *desc;
 struct rt2560_tx_data *data;
 bus_dma_segment_t segs[RT2560_MAX_SCATTER];
 uint32_t flags;
 int nsegs, rate, error;

 desc = &sc->prioq.desc[sc->prioq.cur];
 data = &sc->prioq.data[sc->prioq.cur];

 rate = params->ibp_rate0;
 if (!ieee80211_isratevalid(ic->ic_rt, rate)) {

  m_freem(m0);
  return EINVAL;
 }

 flags = 0;
 if ((params->ibp_flags & IEEE80211_BPF_NOACK) == 0)
  flags |= RT2560_TX_ACK;
 if (params->ibp_flags & (IEEE80211_BPF_RTS|IEEE80211_BPF_CTS)) {
  error = rt2560_sendprot(sc, m0, ni,
      params->ibp_flags & IEEE80211_BPF_RTS ?
    IEEE80211_PROT_RTSCTS : IEEE80211_PROT_CTSONLY,
      rate);
  if (error) {
   m_freem(m0);
   return error;
  }
  flags |= RT2560_TX_LONG_RETRY | RT2560_TX_IFS_SIFS;
 }

 error = bus_dmamap_load_mbuf_sg(sc->prioq.data_dmat, data->map, m0,
     segs, &nsegs, 0);
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

  ieee80211_radiotap_tx(ni->ni_vap, m0);
 }

 data->m = m0;
 data->ni = ni;


 rt2560_setup_tx_desc(sc, desc, flags, m0->m_pkthdr.len,
     rate, (params->ibp_flags & IEEE80211_BPF_CRYPTO) != 0,
     segs->ds_addr);

 bus_dmamap_sync(sc->prioq.data_dmat, data->map, BUS_DMASYNC_PREWRITE);
 bus_dmamap_sync(sc->prioq.desc_dmat, sc->prioq.desc_map,
     BUS_DMASYNC_PREWRITE);

 DPRINTFN(sc, 10, "sending raw frame len=%u idx=%u rate=%u\n",
     m0->m_pkthdr.len, sc->prioq.cur, rate);


 sc->prioq.queued++;
 sc->prioq.cur = (sc->prioq.cur + 1) % RT2560_PRIO_RING_COUNT;
 RAL_WRITE(sc, RT2560_TXCSR0, RT2560_KICK_PRIO);

 return 0;
}
