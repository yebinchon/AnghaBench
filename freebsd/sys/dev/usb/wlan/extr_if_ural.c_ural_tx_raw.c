
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ural_tx_data {int rate; int desc; struct ieee80211_node* ni; struct mbuf* m; } ;
struct ural_softc {scalar_t__ tx_nfree; int * sc_xfer; int tx_q; int tx_free; } ;
struct TYPE_2__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ieee80211com {int ic_rt; } ;
struct ieee80211_node {struct ieee80211com* ni_ic; } ;
struct ieee80211_bpf_params {int ibp_rate0; int ibp_flags; } ;


 int DPRINTFN (int,char*,int ,int) ;
 int EINVAL ;
 int ENOBUFS ;
 int IEEE80211_BPF_CTS ;
 int IEEE80211_BPF_NOACK ;
 int IEEE80211_BPF_RTS ;
 int IEEE80211_PROT_CTSONLY ;
 int IEEE80211_PROT_RTSCTS ;
 int KASSERT (int ,char*) ;
 int MA_OWNED ;
 int RAL_LOCK_ASSERT (struct ural_softc*,int ) ;
 int RAL_TX_ACK ;
 int RAL_TX_IFS_SIFS ;
 struct ural_tx_data* STAILQ_FIRST (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct ural_tx_data*,int ) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 size_t URAL_BULK_WR ;
 int ieee80211_isratevalid (int ,int) ;
 int m_freem (struct mbuf*) ;
 int next ;
 int ural_sendprot (struct ural_softc*,struct mbuf*,struct ieee80211_node*,int ,int) ;
 int ural_setup_tx_desc (struct ural_softc*,int *,int ,int ,int) ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static int
ural_tx_raw(struct ural_softc *sc, struct mbuf *m0, struct ieee80211_node *ni,
    const struct ieee80211_bpf_params *params)
{
 struct ieee80211com *ic = ni->ni_ic;
 struct ural_tx_data *data;
 uint32_t flags;
 int error;
 int rate;

 RAL_LOCK_ASSERT(sc, MA_OWNED);
 KASSERT(params != ((void*)0), ("no raw xmit params"));

 rate = params->ibp_rate0;
 if (!ieee80211_isratevalid(ic->ic_rt, rate)) {
  m_freem(m0);
  return EINVAL;
 }
 flags = 0;
 if ((params->ibp_flags & IEEE80211_BPF_NOACK) == 0)
  flags |= RAL_TX_ACK;
 if (params->ibp_flags & (IEEE80211_BPF_RTS|IEEE80211_BPF_CTS)) {
  error = ural_sendprot(sc, m0, ni,
      params->ibp_flags & IEEE80211_BPF_RTS ?
    IEEE80211_PROT_RTSCTS : IEEE80211_PROT_CTSONLY,
      rate);
  if (error || sc->tx_nfree == 0) {
   m_freem(m0);
   return ENOBUFS;
  }
  flags |= RAL_TX_IFS_SIFS;
 }

 data = STAILQ_FIRST(&sc->tx_free);
 STAILQ_REMOVE_HEAD(&sc->tx_free, next);
 sc->tx_nfree--;

 data->m = m0;
 data->ni = ni;
 data->rate = rate;


 ural_setup_tx_desc(sc, &data->desc, flags, m0->m_pkthdr.len, rate);

 DPRINTFN(10, "sending raw frame len=%u rate=%u\n",
     m0->m_pkthdr.len, rate);

 STAILQ_INSERT_TAIL(&sc->tx_q, data, next);
 usbd_transfer_start(sc->sc_xfer[URAL_BULK_WR]);

 return 0;
}
