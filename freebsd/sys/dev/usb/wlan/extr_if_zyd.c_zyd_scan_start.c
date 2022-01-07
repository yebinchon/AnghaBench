
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zyd_softc {int dummy; } ;
struct ieee80211com {struct zyd_softc* ic_softc; } ;


 int ZYD_LOCK (struct zyd_softc*) ;
 int ZYD_UNLOCK (struct zyd_softc*) ;
 int ieee80211broadcastaddr ;
 int zyd_set_bssid (struct zyd_softc*,int ) ;

__attribute__((used)) static void
zyd_scan_start(struct ieee80211com *ic)
{
 struct zyd_softc *sc = ic->ic_softc;

 ZYD_LOCK(sc);

 zyd_set_bssid(sc, ieee80211broadcastaddr);
 ZYD_UNLOCK(sc);
}
