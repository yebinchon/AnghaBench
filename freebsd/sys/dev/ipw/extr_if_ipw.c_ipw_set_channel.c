
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_softc {int dummy; } ;
struct ieee80211com {scalar_t__ ic_opmode; int ic_curchan; struct ipw_softc* ic_softc; } ;


 scalar_t__ IEEE80211_M_MONITOR ;
 int IPW_LOCK (struct ipw_softc*) ;
 int IPW_UNLOCK (struct ipw_softc*) ;
 int ipw_disable (struct ipw_softc*) ;
 int ipw_enable (struct ipw_softc*) ;
 int ipw_setchannel (struct ipw_softc*,int ) ;

__attribute__((used)) static void
ipw_set_channel(struct ieee80211com *ic)
{
 struct ipw_softc *sc = ic->ic_softc;

 IPW_LOCK(sc);
 if (ic->ic_opmode == IEEE80211_M_MONITOR) {
  ipw_disable(sc);
  ipw_setchannel(sc, ic->ic_curchan);
  ipw_enable(sc);
 }
 IPW_UNLOCK(sc);
}
