
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_bsschan; } ;
struct rum_softc {struct ieee80211com sc_ic; } ;


 int IEEE80211_IS_CHAN_5GHZ (int ) ;
 int RT2573_MRR_CCK_FALLBACK ;
 int RT2573_MRR_ENABLED ;
 int RT2573_TXRX_CSR4 ;
 int rum_modbits (struct rum_softc*,int ,int,int) ;
 int rum_setbits (struct rum_softc*,int ,int) ;

__attribute__((used)) static void
rum_enable_mrr(struct rum_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;

 if (!IEEE80211_IS_CHAN_5GHZ(ic->ic_bsschan)) {
  rum_setbits(sc, RT2573_TXRX_CSR4,
      RT2573_MRR_ENABLED | RT2573_MRR_CCK_FALLBACK);
 } else {
  rum_modbits(sc, RT2573_TXRX_CSR4,
      RT2573_MRR_ENABLED, RT2573_MRR_CCK_FALLBACK);
 }
}
