
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt2661_softc {int dummy; } ;
struct ieee80211vap {TYPE_1__* iv_bss; } ;
struct ieee80211com {int ic_vaps; struct rt2661_softc* ic_softc; } ;
struct TYPE_2__ {int ni_bssid; } ;


 struct ieee80211vap* TAILQ_FIRST (int *) ;
 int rt2661_enable_tsf_sync (struct rt2661_softc*) ;
 int rt2661_set_bssid (struct rt2661_softc*,int ) ;

__attribute__((used)) static void
rt2661_scan_end(struct ieee80211com *ic)
{
 struct rt2661_softc *sc = ic->ic_softc;
 struct ieee80211vap *vap = TAILQ_FIRST(&ic->ic_vaps);

 rt2661_enable_tsf_sync(sc);

 rt2661_set_bssid(sc, vap->iv_bss->ni_bssid);
}
