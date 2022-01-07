
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wi_softc {int dummy; } ;
struct ieee80211com {scalar_t__ ic_opmode; scalar_t__ ic_promisc; struct wi_softc* ic_softc; } ;


 scalar_t__ IEEE80211_M_MONITOR ;
 int WI_LOCK (struct wi_softc*) ;
 int WI_RID_PROMISC ;
 int WI_UNLOCK (struct wi_softc*) ;
 int wi_write_val (struct wi_softc*,int ,int) ;

__attribute__((used)) static void
wi_update_promisc(struct ieee80211com *ic)
{
 struct wi_softc *sc = ic->ic_softc;

 WI_LOCK(sc);

 wi_write_val(sc, WI_RID_PROMISC,
     (ic->ic_opmode == IEEE80211_M_MONITOR ||
      (ic->ic_promisc > 0)));
 WI_UNLOCK(sc);
}
