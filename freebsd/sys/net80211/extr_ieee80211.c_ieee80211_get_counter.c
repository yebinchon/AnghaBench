
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ifnet {struct ieee80211vap* if_softc; } ;
struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ieee80211com {int ic_ierrors; int ic_oerrors; } ;
typedef int ift_counter ;




 int counter_u64_fetch (int ) ;
 int if_get_counter_default (struct ifnet*,int) ;

__attribute__((used)) static uint64_t
ieee80211_get_counter(struct ifnet *ifp, ift_counter cnt)
{
 struct ieee80211vap *vap = ifp->if_softc;
 struct ieee80211com *ic = vap->iv_ic;
 uint64_t rv;

 rv = if_get_counter_default(ifp, cnt);
 switch (cnt) {
 case 128:
  rv += counter_u64_fetch(ic->ic_oerrors);
  break;
 case 129:
  rv += counter_u64_fetch(ic->ic_ierrors);
  break;
 default:
  break;
 }

 return (rv);
}
