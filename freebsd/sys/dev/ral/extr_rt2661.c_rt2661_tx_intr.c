
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rt2661_tx_ring {size_t stat; size_t count; int queued; struct rt2661_tx_data* data; } ;
struct rt2661_tx_data {int rix; struct ieee80211_node* ni; struct mbuf* m; } ;
struct ieee80211_ratectl_tx_status {void* long_retries; void* status; void* flags; } ;
struct rt2661_softc {scalar_t__ sc_tx_timer; int sc_dev; struct rt2661_tx_ring mgtq; struct rt2661_tx_ring* txq; struct ieee80211_ratectl_tx_status sc_txs; } ;
struct mbuf {int dummy; } ;
struct ieee80211_node {int dummy; } ;


 int DPRINTFN (struct rt2661_softc*,int,char*,...) ;
 int IEEE80211_FIXED_RATE_NONE ;
 void* IEEE80211_RATECTL_TX_FAIL_LONG ;
 void* IEEE80211_RATECTL_TX_SUCCESS ;
 int RAL_READ (struct rt2661_softc*,int ) ;
 int RT2661_STA_CSR4 ;
 int RT2661_TX_QID (int) ;
 int RT2661_TX_RESULT (int) ;
 void* RT2661_TX_RETRYCNT (int) ;

 int RT2661_TX_STAT_VALID ;

 int device_printf (int ,char*,int) ;
 int ieee80211_ratectl_tx_complete (struct ieee80211_node*,struct ieee80211_ratectl_tx_status*) ;
 int ieee80211_tx_complete (struct ieee80211_node*,struct mbuf*,int) ;
 int rt2661_start (struct rt2661_softc*) ;

__attribute__((used)) static void
rt2661_tx_intr(struct rt2661_softc *sc)
{
 struct ieee80211_ratectl_tx_status *txs = &sc->sc_txs;
 struct rt2661_tx_ring *txq;
 struct rt2661_tx_data *data;
 uint32_t val;
 int error, qid;

 txs->flags = IEEE80211_RATECTL_TX_FAIL_LONG;
 for (;;) {
  struct ieee80211_node *ni;
  struct mbuf *m;

  val = RAL_READ(sc, RT2661_STA_CSR4);
  if (!(val & RT2661_TX_STAT_VALID))
   break;


  qid = RT2661_TX_QID(val);
  txq = (qid <= 3) ? &sc->txq[qid] : &sc->mgtq;


  data = &txq->data[txq->stat];
  m = data->m;
  data->m = ((void*)0);
  ni = data->ni;
  data->ni = ((void*)0);


  if (ni == ((void*)0))
   continue;

  switch (RT2661_TX_RESULT(val)) {
  case 128:
   txs->status = IEEE80211_RATECTL_TX_SUCCESS;
   txs->long_retries = RT2661_TX_RETRYCNT(val);

   DPRINTFN(sc, 10, "data frame sent successfully after "
       "%d retries\n", txs->long_retries);
   if (data->rix != IEEE80211_FIXED_RATE_NONE)
    ieee80211_ratectl_tx_complete(ni, txs);
   error = 0;
   break;

  case 129:
   txs->status = IEEE80211_RATECTL_TX_FAIL_LONG;
   txs->long_retries = RT2661_TX_RETRYCNT(val);

   DPRINTFN(sc, 9, "%s\n",
       "sending data frame failed (too much retries)");
   if (data->rix != IEEE80211_FIXED_RATE_NONE)
    ieee80211_ratectl_tx_complete(ni, txs);
   error = 1;
   break;

  default:

   device_printf(sc->sc_dev,
       "sending data frame failed 0x%08x\n", val);
   error = 1;
  }

  DPRINTFN(sc, 15, "tx done q=%d idx=%u\n", qid, txq->stat);

  txq->queued--;
  if (++txq->stat >= txq->count)
   txq->stat = 0;

  ieee80211_tx_complete(ni, m, error);
 }

 sc->sc_tx_timer = 0;

 rt2661_start(sc);
}
