
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwi_softc {int dummy; } ;
struct ifnet {struct ieee80211vap* if_softc; } ;
struct ifmediareq {int dummy; } ;
struct ieee80211vap {int iv_bss; struct ieee80211com* iv_ic; } ;
struct ieee80211com {struct iwi_softc* ic_softc; } ;
struct ieee80211_node {int ni_txrate; } ;


 int CSR_READ_4 (struct iwi_softc*,int ) ;
 int IWI_CSR_CURRENT_TX_RATE ;
 int ieee80211_free_node (struct ieee80211_node*) ;
 int ieee80211_media_status (struct ifnet*,struct ifmediareq*) ;
 struct ieee80211_node* ieee80211_ref_node (int ) ;
 int iwi_cvtrate (int ) ;

__attribute__((used)) static void
iwi_media_status(struct ifnet *ifp, struct ifmediareq *imr)
{
 struct ieee80211vap *vap = ifp->if_softc;
 struct ieee80211com *ic = vap->iv_ic;
 struct iwi_softc *sc = ic->ic_softc;
 struct ieee80211_node *ni;


 ni = ieee80211_ref_node(vap->iv_bss);
 ni->ni_txrate =
     iwi_cvtrate(CSR_READ_4(sc, IWI_CSR_CURRENT_TX_RATE));
 ieee80211_free_node(ni);
 ieee80211_media_status(ifp, imr);
}
