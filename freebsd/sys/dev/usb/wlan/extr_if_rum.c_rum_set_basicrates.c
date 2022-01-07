
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {scalar_t__ ic_curmode; int ic_bsschan; } ;
struct rum_softc {struct ieee80211com sc_ic; } ;


 scalar_t__ IEEE80211_IS_CHAN_5GHZ (int ) ;
 scalar_t__ IEEE80211_MODE_11B ;
 int RT2573_TXRX_CSR5 ;
 int rum_write (struct rum_softc*,int ,int) ;

__attribute__((used)) static void
rum_set_basicrates(struct rum_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;


 if (ic->ic_curmode == IEEE80211_MODE_11B) {

  rum_write(sc, RT2573_TXRX_CSR5, 0x3);
 } else if (IEEE80211_IS_CHAN_5GHZ(ic->ic_bsschan)) {

  rum_write(sc, RT2573_TXRX_CSR5, 0x150);
 } else {

  rum_write(sc, RT2573_TXRX_CSR5, 0xf);
 }
}
