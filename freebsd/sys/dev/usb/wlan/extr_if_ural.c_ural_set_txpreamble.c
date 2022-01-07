
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ieee80211com {int ic_flags; } ;
struct ural_softc {struct ieee80211com sc_ic; } ;


 int IEEE80211_F_SHPREAMBLE ;
 int RAL_SHORT_PREAMBLE ;
 int RAL_TXRX_CSR10 ;
 int ural_read (struct ural_softc*,int ) ;
 int ural_write (struct ural_softc*,int ,int ) ;

__attribute__((used)) static void
ural_set_txpreamble(struct ural_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 uint16_t tmp;

 tmp = ural_read(sc, RAL_TXRX_CSR10);

 tmp &= ~RAL_SHORT_PREAMBLE;
 if (ic->ic_flags & IEEE80211_F_SHPREAMBLE)
  tmp |= RAL_SHORT_PREAMBLE;

 ural_write(sc, RAL_TXRX_CSR10, tmp);
}
