
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ural_softc {int dummy; } ;
struct ieee80211com {struct ural_softc* ic_softc; } ;


 int RAL_LOCK (struct ural_softc*) ;
 int RAL_TXRX_CSR19 ;
 int RAL_UNLOCK (struct ural_softc*) ;
 int ieee80211broadcastaddr ;
 int ural_set_bssid (struct ural_softc*,int ) ;
 int ural_write (struct ural_softc*,int ,int ) ;

__attribute__((used)) static void
ural_scan_start(struct ieee80211com *ic)
{
 struct ural_softc *sc = ic->ic_softc;

 RAL_LOCK(sc);
 ural_write(sc, RAL_TXRX_CSR19, 0);
 ural_set_bssid(sc, ieee80211broadcastaddr);
 RAL_UNLOCK(sc);
}
