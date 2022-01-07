
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ieee80211com {scalar_t__ ic_curmode; } ;
struct ural_softc {struct ieee80211com sc_ic; } ;


 int IEEE80211_GET_SLOTTIME (struct ieee80211com*) ;
 scalar_t__ IEEE80211_MODE_11B ;
 int RAL_MAC_CSR10 ;
 int RAL_MAC_CSR11 ;
 int RAL_MAC_CSR12 ;
 int RAL_RXTX_TURNAROUND ;
 int ural_write (struct ural_softc*,int ,int) ;

__attribute__((used)) static void
ural_update_slot(struct ural_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 uint16_t slottime, sifs, eifs;

 slottime = IEEE80211_GET_SLOTTIME(ic);





 if (ic->ic_curmode == IEEE80211_MODE_11B) {
  sifs = 16 - RAL_RXTX_TURNAROUND;
  eifs = 364;
 } else {
  sifs = 10 - RAL_RXTX_TURNAROUND;
  eifs = 64;
 }

 ural_write(sc, RAL_MAC_CSR10, slottime);
 ural_write(sc, RAL_MAC_CSR11, sifs);
 ural_write(sc, RAL_MAC_CSR12, eifs);
}
