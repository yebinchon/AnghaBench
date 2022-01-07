
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211vap {int iv_ifp; TYPE_1__* iv_ic; } ;
struct rum_vap {int maxretry; int ratectl_ch; struct ieee80211vap vap; } ;
struct ieee80211_ratectl_tx_stats {int nframes; int nsuccess; int nretries; int flags; } ;
struct rum_softc {int * sta; struct ieee80211_ratectl_tx_stats sc_txs; } ;
struct TYPE_2__ {struct rum_softc* ic_softc; } ;


 int IEEE80211_RATECTL_TX_STATS_RETRIES ;
 int IFCOUNTER_OERRORS ;
 int RT2573_STA_CSR0 ;
 int RUM_LOCK (struct rum_softc*) ;
 int RUM_UNLOCK (struct rum_softc*) ;
 int hz ;
 int ieee80211_ratectl_tx_update (struct ieee80211vap*,struct ieee80211_ratectl_tx_stats*) ;
 int if_inc_counter (int ,int ,int) ;
 int le32toh (int ) ;
 int rum_ratectl_timeout ;
 int rum_read_multi (struct rum_softc*,int ,int *,int) ;
 int usb_callout_reset (int *,int ,int ,struct rum_vap*) ;

__attribute__((used)) static void
rum_ratectl_task(void *arg, int pending)
{
 struct rum_vap *rvp = arg;
 struct ieee80211vap *vap = &rvp->vap;
 struct rum_softc *sc = vap->iv_ic->ic_softc;
 struct ieee80211_ratectl_tx_stats *txs = &sc->sc_txs;
 int ok[3], fail;

 RUM_LOCK(sc);

 rum_read_multi(sc, RT2573_STA_CSR0, sc->sta, sizeof(sc->sta));

 ok[0] = (le32toh(sc->sta[4]) & 0xffff);
 ok[1] = (le32toh(sc->sta[4]) >> 16);
 ok[2] = (le32toh(sc->sta[5]) & 0xffff);
 fail = (le32toh(sc->sta[5]) >> 16);

 txs->flags = IEEE80211_RATECTL_TX_STATS_RETRIES;
 txs->nframes = ok[0] + ok[1] + ok[2] + fail;
 txs->nsuccess = txs->nframes - fail;

 txs->nretries = ok[1] + ok[2] * 2 + fail * (rvp->maxretry + 1);

 if (txs->nframes != 0)
  ieee80211_ratectl_tx_update(vap, txs);


 if_inc_counter(vap->iv_ifp, IFCOUNTER_OERRORS, fail);

 usb_callout_reset(&rvp->ratectl_ch, hz, rum_ratectl_timeout, rvp);
 RUM_UNLOCK(sc);
}
