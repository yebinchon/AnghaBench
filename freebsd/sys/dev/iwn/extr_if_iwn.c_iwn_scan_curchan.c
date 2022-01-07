
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwn_softc {int dummy; } ;
struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ieee80211com {int ic_curchan; struct iwn_softc* ic_softc; } ;
struct ieee80211_scan_state {struct ieee80211vap* ss_vap; } ;


 int IWN_LOCK (struct iwn_softc*) ;
 int IWN_UNLOCK (struct iwn_softc*) ;
 int ieee80211_cancel_scan (struct ieee80211vap*) ;
 int iwn_scan (struct iwn_softc*,struct ieee80211vap*,struct ieee80211_scan_state*,int ) ;

__attribute__((used)) static void
iwn_scan_curchan(struct ieee80211_scan_state *ss, unsigned long maxdwell)
{
 struct ieee80211vap *vap = ss->ss_vap;
 struct ieee80211com *ic = vap->iv_ic;
 struct iwn_softc *sc = ic->ic_softc;
 int error;

 IWN_LOCK(sc);
 error = iwn_scan(sc, vap, ss, ic->ic_curchan);
 IWN_UNLOCK(sc);
 if (error != 0)
  ieee80211_cancel_scan(vap);
}
