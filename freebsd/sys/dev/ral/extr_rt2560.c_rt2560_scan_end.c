
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rt2560_softc {int dummy; } ;
struct ieee80211vap {TYPE_2__* iv_bss; } ;
struct ieee80211com {TYPE_1__* ic_scan; struct rt2560_softc* ic_softc; } ;
struct TYPE_4__ {int ni_bssid; } ;
struct TYPE_3__ {struct ieee80211vap* ss_vap; } ;


 int rt2560_enable_tsf_sync (struct rt2560_softc*) ;
 int rt2560_set_bssid (struct rt2560_softc*,int ) ;

__attribute__((used)) static void
rt2560_scan_end(struct ieee80211com *ic)
{
 struct rt2560_softc *sc = ic->ic_softc;
 struct ieee80211vap *vap = ic->ic_scan->ss_vap;

 rt2560_enable_tsf_sync(sc);

 rt2560_set_bssid(sc, vap->iv_bss->ni_bssid);
}
