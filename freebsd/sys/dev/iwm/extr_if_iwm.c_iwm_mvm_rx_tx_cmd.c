
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct iwm_tx_ring {scalar_t__ queued; int data_dmat; struct iwm_tx_data* data; } ;
struct iwm_tx_data {int done; struct iwm_node* in; struct mbuf* m; int map; } ;
struct iwm_softc {int qfullmsk; scalar_t__ sc_tx_timer; struct iwm_tx_ring* txq; } ;
struct iwm_cmd_header {int idx; int qid; } ;
struct iwm_rx_packet {struct iwm_cmd_header hdr; } ;
struct iwm_node {int in_ni; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int IWM_DEBUG_XMIT ;
 int IWM_DPRINTF (struct iwm_softc*,int ,char*,struct iwm_tx_data*,struct iwm_node*) ;
 scalar_t__ IWM_TX_RING_LOMARK ;
 int KASSERT (int,char*) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int ieee80211_tx_complete (int *,struct mbuf*,int) ;
 int iwm_mvm_rx_tx_cmd_single (struct iwm_softc*,struct iwm_rx_packet*,struct iwm_node*) ;
 int iwm_start (struct iwm_softc*) ;

__attribute__((used)) static void
iwm_mvm_rx_tx_cmd(struct iwm_softc *sc, struct iwm_rx_packet *pkt)
{
 struct iwm_cmd_header *cmd_hdr;
 struct iwm_tx_ring *ring;
 struct iwm_tx_data *txd;
 struct iwm_node *in;
 struct mbuf *m;
 int idx, qid, qmsk, status;

 cmd_hdr = &pkt->hdr;
 idx = cmd_hdr->idx;
 qid = cmd_hdr->qid;

 ring = &sc->txq[qid];
 txd = &ring->data[idx];
 in = txd->in;
 m = txd->m;

 KASSERT(txd->done == 0, ("txd not done"));
 KASSERT(txd->in != ((void*)0), ("txd without node"));
 KASSERT(txd->m != ((void*)0), ("txd without mbuf"));

 sc->sc_tx_timer = 0;

 status = iwm_mvm_rx_tx_cmd_single(sc, pkt, in);


 bus_dmamap_sync(ring->data_dmat, txd->map, BUS_DMASYNC_POSTWRITE);
 bus_dmamap_unload(ring->data_dmat, txd->map);

 IWM_DPRINTF(sc, IWM_DEBUG_XMIT,
     "free txd %p, in %p\n", txd, txd->in);
 txd->done = 1;
 txd->m = ((void*)0);
 txd->in = ((void*)0);

 ieee80211_tx_complete(&in->in_ni, m, status);

 qmsk = 1 << qid;
 if (--ring->queued < IWM_TX_RING_LOMARK && (sc->qfullmsk & qmsk) != 0) {
  sc->qfullmsk &= ~qmsk;
  if (sc->qfullmsk == 0)
   iwm_start(sc);
 }
}
