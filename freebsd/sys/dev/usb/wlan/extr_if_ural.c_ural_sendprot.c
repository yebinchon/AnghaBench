
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ural_tx_data {int rate; int desc; int ni; struct mbuf* m; } ;
struct ural_softc {int * sc_xfer; int tx_q; int tx_nfree; int tx_free; int sc_dev; } ;
struct TYPE_4__ {int len; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;
struct ieee80211com {int ic_rt; } ;
struct ieee80211_node {TYPE_1__* ni_vap; struct ieee80211com* ni_ic; } ;
struct TYPE_3__ {int iv_ifp; } ;


 int ENOBUFS ;
 int IEEE80211_PROT_RTSCTS ;
 int IFCOUNTER_OERRORS ;
 int RAL_TX_ACK ;
 int RAL_TX_RETRY (int) ;
 struct ural_tx_data* STAILQ_FIRST (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct ural_tx_data*,int ) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 size_t URAL_BULK_WR ;
 int device_printf (int ,char*,int) ;
 struct mbuf* ieee80211_alloc_prot (struct ieee80211_node*,struct mbuf const*,int,int) ;
 int ieee80211_ctl_rate (int ,int) ;
 int ieee80211_ref_node (struct ieee80211_node*) ;
 int if_inc_counter (int ,int ,int) ;
 int next ;
 int ural_setup_tx_desc (struct ural_softc*,int *,int,int ,int) ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static int
ural_sendprot(struct ural_softc *sc,
    const struct mbuf *m, struct ieee80211_node *ni, int prot, int rate)
{
 struct ieee80211com *ic = ni->ni_ic;
 struct ural_tx_data *data;
 struct mbuf *mprot;
 int protrate, flags;

 mprot = ieee80211_alloc_prot(ni, m, rate, prot);
 if (mprot == ((void*)0)) {
  if_inc_counter(ni->ni_vap->iv_ifp, IFCOUNTER_OERRORS, 1);
  device_printf(sc->sc_dev,
      "could not allocate mbuf for protection mode %d\n", prot);
  return ENOBUFS;
 }

 protrate = ieee80211_ctl_rate(ic->ic_rt, rate);
 flags = RAL_TX_RETRY(7);
 if (prot == IEEE80211_PROT_RTSCTS)
  flags |= RAL_TX_ACK;

 data = STAILQ_FIRST(&sc->tx_free);
 STAILQ_REMOVE_HEAD(&sc->tx_free, next);
 sc->tx_nfree--;

 data->m = mprot;
 data->ni = ieee80211_ref_node(ni);
 data->rate = protrate;
 ural_setup_tx_desc(sc, &data->desc, flags, mprot->m_pkthdr.len, protrate);

 STAILQ_INSERT_TAIL(&sc->tx_q, data, next);
 usbd_transfer_start(sc->sc_xfer[URAL_BULK_WR]);

 return 0;
}
