
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_flags; } ;
struct rum_softc {struct ieee80211com sc_ic; } ;


 int IEEE80211_F_SHPREAMBLE ;
 int RT2573_SHORT_PREAMBLE ;
 int RT2573_TXRX_CSR4 ;
 int rum_clrbits (struct rum_softc*,int ,int ) ;
 int rum_setbits (struct rum_softc*,int ,int ) ;

__attribute__((used)) static void
rum_set_txpreamble(struct rum_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;

 if (ic->ic_flags & IEEE80211_F_SHPREAMBLE)
  rum_setbits(sc, RT2573_TXRX_CSR4, RT2573_SHORT_PREAMBLE);
 else
  rum_clrbits(sc, RT2573_TXRX_CSR4, RT2573_SHORT_PREAMBLE);
}
