
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ieee80211com {int ic_bsschan; } ;
struct rt2661_softc {struct ieee80211com sc_ic; } ;


 int IEEE80211_IS_CHAN_5GHZ (int ) ;
 int RAL_READ (struct rt2661_softc*,int ) ;
 int RAL_WRITE (struct rt2661_softc*,int ,int ) ;
 int RT2661_MRR_CCK_FALLBACK ;
 int RT2661_MRR_ENABLED ;
 int RT2661_TXRX_CSR4 ;

__attribute__((used)) static void
rt2661_enable_mrr(struct rt2661_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 uint32_t tmp;

 tmp = RAL_READ(sc, RT2661_TXRX_CSR4);

 tmp &= ~RT2661_MRR_CCK_FALLBACK;
 if (!IEEE80211_IS_CHAN_5GHZ(ic->ic_bsschan))
  tmp |= RT2661_MRR_CCK_FALLBACK;
 tmp |= RT2661_MRR_ENABLED;

 RAL_WRITE(sc, RT2661_TXRX_CSR4, tmp);
}
