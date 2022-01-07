
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
struct ieee80211_ratectl_tx_status {int long_retries; int status; int flags; } ;
struct rt2860_softc {struct ieee80211_node** wcid2ni; struct ieee80211_ratectl_tx_status sc_txs; } ;
struct ieee80211_node {TYPE_1__* ni_vap; } ;
struct TYPE_2__ {int iv_ifp; } ;


 int DPRINTFN (int,char*) ;
 int IEEE80211_RATECTL_STATUS_LONG_RETRY ;
 int IEEE80211_RATECTL_TX_FAIL_UNSPECIFIED ;
 int IEEE80211_RATECTL_TX_SUCCESS ;
 int IFCOUNTER_OERRORS ;
 int RAL_READ (struct rt2860_softc*,int ) ;
 int RT2860_TXQ_ACKREQ ;
 int RT2860_TXQ_MCS_SHIFT ;
 int RT2860_TXQ_OK ;
 int RT2860_TXQ_PID_SHIFT ;
 int RT2860_TXQ_VLD ;
 int RT2860_TXQ_WCID_SHIFT ;
 int RT2860_TX_STAT_FIFO ;
 size_t RT2860_WCID_MAX ;
 int ieee80211_ratectl_tx_complete (struct ieee80211_node*,struct ieee80211_ratectl_tx_status*) ;
 int if_inc_counter (int ,int ,int) ;

__attribute__((used)) static void
rt2860_drain_stats_fifo(struct rt2860_softc *sc)
{
 struct ieee80211_ratectl_tx_status *txs = &sc->sc_txs;
 struct ieee80211_node *ni;
 uint32_t stat;
 uint8_t wcid, mcs, pid;


 txs->flags = IEEE80211_RATECTL_STATUS_LONG_RETRY;
 while ((stat = RAL_READ(sc, RT2860_TX_STAT_FIFO)) & RT2860_TXQ_VLD) {
  DPRINTFN(4, ("tx stat 0x%08x\n", stat));

  wcid = (stat >> RT2860_TXQ_WCID_SHIFT) & 0xff;
  if (wcid > RT2860_WCID_MAX)
   continue;
  ni = sc->wcid2ni[wcid];


  if (!(stat & RT2860_TXQ_ACKREQ) || ni == ((void*)0))
   continue;


  if (stat & RT2860_TXQ_OK) {






   mcs = (stat >> RT2860_TXQ_MCS_SHIFT) & 0x7f;
   pid = (stat >> RT2860_TXQ_PID_SHIFT) & 0xf;
   if (mcs + 1 != pid)
    txs->long_retries = 1;
   else
    txs->long_retries = 0;
   txs->status = IEEE80211_RATECTL_TX_SUCCESS;
   ieee80211_ratectl_tx_complete(ni, txs);
  } else {
   txs->status = IEEE80211_RATECTL_TX_FAIL_UNSPECIFIED;
   txs->long_retries = 1;
   ieee80211_ratectl_tx_complete(ni, txs);
   if_inc_counter(ni->ni_vap->iv_ifp,
       IFCOUNTER_OERRORS, 1);
  }
 }
}
