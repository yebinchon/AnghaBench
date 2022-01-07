
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2560_softc {int dummy; } ;
struct ieee80211com {struct rt2560_softc* ic_softc; } ;


 int RAL_WRITE (struct rt2560_softc*,int ,int ) ;
 int RT2560_CSR14 ;
 int ieee80211broadcastaddr ;
 int rt2560_set_bssid (struct rt2560_softc*,int ) ;

__attribute__((used)) static void
rt2560_scan_start(struct ieee80211com *ic)
{
 struct rt2560_softc *sc = ic->ic_softc;


 RAL_WRITE(sc, RT2560_CSR14, 0);
 rt2560_set_bssid(sc, ieee80211broadcastaddr);
}
