
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct run_softc {int dummy; } ;
struct ieee80211com {struct run_softc* ic_softc; } ;


 int RUN_LOCK (struct run_softc*) ;
 int RUN_UNLOCK (struct run_softc*) ;
 int ieee80211broadcastaddr ;
 int run_disable_tsf (struct run_softc*) ;
 int run_set_bssid (struct run_softc*,int ) ;

__attribute__((used)) static void
run_scan_start(struct ieee80211com *ic)
{
 struct run_softc *sc = ic->ic_softc;

 RUN_LOCK(sc);


 run_disable_tsf(sc);
 run_set_bssid(sc, ieee80211broadcastaddr);

 RUN_UNLOCK(sc);

 return;
}
