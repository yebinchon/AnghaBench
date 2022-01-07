
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipw_softc {int dummy; } ;
struct ifnet {struct ieee80211vap* if_softc; } ;
struct ifmediareq {int dummy; } ;
struct ieee80211vap {TYPE_1__* iv_bss; struct ieee80211com* iv_ic; } ;
struct ieee80211com {struct ipw_softc* ic_softc; } ;
struct TYPE_2__ {int ni_txrate; } ;


 int IPW_INFO_CURRENT_TX_RATE ;
 int ieee80211_media_status (struct ifnet*,struct ifmediareq*) ;
 int ipw_cvtrate (int) ;
 int ipw_read_table1 (struct ipw_softc*,int ) ;

__attribute__((used)) static void
ipw_media_status(struct ifnet *ifp, struct ifmediareq *imr)
{
 struct ieee80211vap *vap = ifp->if_softc;
 struct ieee80211com *ic = vap->iv_ic;
 struct ipw_softc *sc = ic->ic_softc;


 vap->iv_bss->ni_txrate = ipw_cvtrate(
     ipw_read_table1(sc, IPW_INFO_CURRENT_TX_RATE) & 0xf);
 ieee80211_media_status(ifp, imr);
}
