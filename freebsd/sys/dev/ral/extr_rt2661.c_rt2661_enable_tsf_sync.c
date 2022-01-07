
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ieee80211com {int ic_vaps; } ;
struct rt2661_softc {struct ieee80211com sc_ic; } ;
struct ieee80211vap {scalar_t__ iv_opmode; TYPE_1__* iv_bss; } ;
struct TYPE_2__ {int ni_intval; } ;


 scalar_t__ IEEE80211_M_STA ;
 int RAL_READ (struct rt2661_softc*,int ) ;
 int RAL_WRITE (struct rt2661_softc*,int ,int) ;
 int RT2661_ENABLE_TBTT ;
 int RT2661_GENERATE_BEACON ;
 int RT2661_TSF_MODE (int) ;
 int RT2661_TSF_TICKING ;
 int RT2661_TXRX_CSR10 ;
 int RT2661_TXRX_CSR9 ;
 struct ieee80211vap* TAILQ_FIRST (int *) ;

__attribute__((used)) static void
rt2661_enable_tsf_sync(struct rt2661_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct ieee80211vap *vap = TAILQ_FIRST(&ic->ic_vaps);
 uint32_t tmp;

 if (vap->iv_opmode != IEEE80211_M_STA) {




  RAL_WRITE(sc, RT2661_TXRX_CSR10, 1 << 12 | 8);
 }

 tmp = RAL_READ(sc, RT2661_TXRX_CSR9) & 0xff000000;


 tmp |= vap->iv_bss->ni_intval * 16;

 tmp |= RT2661_TSF_TICKING | RT2661_ENABLE_TBTT;
 if (vap->iv_opmode == IEEE80211_M_STA)
  tmp |= RT2661_TSF_MODE(1);
 else
  tmp |= RT2661_TSF_MODE(2) | RT2661_GENERATE_BEACON;

 RAL_WRITE(sc, RT2661_TXRX_CSR9, tmp);
}
