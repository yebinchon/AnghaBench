
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211vap {int iv_ifp; TYPE_1__* iv_ic; } ;
struct ural_vap {int ratectl_ch; struct ieee80211vap vap; } ;
struct ieee80211_ratectl_tx_stats {int nsuccess; int nframes; int nretries; int flags; } ;
struct ural_softc {int* sta; struct ieee80211_ratectl_tx_stats sc_txs; } ;
struct TYPE_2__ {struct ural_softc* ic_softc; } ;


 int IEEE80211_RATECTL_TX_STATS_RETRIES ;
 int IFCOUNTER_OERRORS ;
 int RAL_LOCK (struct ural_softc*) ;
 int RAL_STA_CSR0 ;
 int RAL_UNLOCK (struct ural_softc*) ;
 int hz ;
 int ieee80211_ratectl_tx_update (struct ieee80211vap*,struct ieee80211_ratectl_tx_stats*) ;
 int if_inc_counter (int ,int ,int) ;
 int ural_ratectl_timeout ;
 int ural_read_multi (struct ural_softc*,int ,int*,int) ;
 int usb_callout_reset (int *,int ,int ,struct ural_vap*) ;

__attribute__((used)) static void
ural_ratectl_task(void *arg, int pending)
{
 struct ural_vap *uvp = arg;
 struct ieee80211vap *vap = &uvp->vap;
 struct ural_softc *sc = vap->iv_ic->ic_softc;
 struct ieee80211_ratectl_tx_stats *txs = &sc->sc_txs;
 int fail;

 RAL_LOCK(sc);

 ural_read_multi(sc, RAL_STA_CSR0, sc->sta, sizeof(sc->sta));

 txs->flags = IEEE80211_RATECTL_TX_STATS_RETRIES;
 txs->nsuccess = sc->sta[7] +
   sc->sta[8];
 fail = sc->sta[9];
 txs->nframes = txs->nsuccess + fail;

 txs->nretries = sc->sta[8] + fail;

 ieee80211_ratectl_tx_update(vap, txs);


 if_inc_counter(vap->iv_ifp, IFCOUNTER_OERRORS, fail);

 usb_callout_reset(&uvp->ratectl_ch, hz, ural_ratectl_timeout, uvp);
 RAL_UNLOCK(sc);
}
