
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rum_vap {int bcn_mbuf; int ratectl_task; int ratectl_ch; } ;
struct rum_softc {int dummy; } ;
struct ieee80211vap {int iv_nstate_task; struct ieee80211com* iv_ic; } ;
struct ieee80211com {struct rum_softc* ic_softc; } ;


 int IEEE80211_S_INIT ;
 int M_80211_VAP ;
 int RUM_LOCK (struct rum_softc*) ;
 int RUM_UNLOCK (struct rum_softc*) ;
 struct rum_vap* RUM_VAP (struct ieee80211vap*) ;
 int free (struct rum_vap*,int ) ;
 int ieee80211_draintask (struct ieee80211com*,int *) ;
 int ieee80211_new_state (struct ieee80211vap*,int ,int) ;
 int ieee80211_ratectl_deinit (struct ieee80211vap*) ;
 int ieee80211_vap_detach (struct ieee80211vap*) ;
 int m_freem (int ) ;
 int rum_reset_tx_list (struct rum_softc*,struct ieee80211vap*) ;
 int usb_callout_drain (int *) ;

__attribute__((used)) static void
rum_vap_delete(struct ieee80211vap *vap)
{
 struct rum_vap *rvp = RUM_VAP(vap);
 struct ieee80211com *ic = vap->iv_ic;
 struct rum_softc *sc = ic->ic_softc;


 ieee80211_new_state(vap, IEEE80211_S_INIT, -1);
 ieee80211_draintask(ic, &vap->iv_nstate_task);

 RUM_LOCK(sc);

 rum_reset_tx_list(sc, vap);
 RUM_UNLOCK(sc);

 usb_callout_drain(&rvp->ratectl_ch);
 ieee80211_draintask(ic, &rvp->ratectl_task);
 ieee80211_ratectl_deinit(vap);
 ieee80211_vap_detach(vap);
 m_freem(rvp->bcn_mbuf);
 free(rvp, M_80211_VAP);
}
