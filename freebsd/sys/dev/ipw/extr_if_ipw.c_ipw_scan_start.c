
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_softc {int dummy; } ;
struct ieee80211com {struct ipw_softc* ic_softc; } ;


 int IPW_LOCK (struct ipw_softc*) ;
 int IPW_UNLOCK (struct ipw_softc*) ;
 int ipw_scan (struct ipw_softc*) ;

__attribute__((used)) static void
ipw_scan_start(struct ieee80211com *ic)
{
 struct ipw_softc *sc = ic->ic_softc;

 IPW_LOCK(sc);
 ipw_scan(sc);
 IPW_UNLOCK(sc);
}
