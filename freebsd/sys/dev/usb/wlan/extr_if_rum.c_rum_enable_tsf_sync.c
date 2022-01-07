
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct ieee80211com {int ic_vaps; } ;
struct rum_softc {int sc_dev; struct ieee80211com sc_ic; } ;
struct ieee80211vap {int iv_opmode; TYPE_1__* iv_bss; } ;
struct TYPE_2__ {int ni_intval; } ;


 int EINVAL ;
 int EIO ;



 int RT2573_BCN_TX_EN ;
 int RT2573_TBTT_TIMER_EN ;
 int RT2573_TSF_SYNC_MODE (int ) ;
 int RT2573_TSF_SYNC_MODE_HOSTAP ;
 int RT2573_TSF_SYNC_MODE_IBSS ;
 int RT2573_TSF_SYNC_MODE_STA ;
 int RT2573_TSF_TIMER_EN ;
 int RT2573_TXRX_CSR10 ;
 int RT2573_TXRX_CSR9 ;
 struct ieee80211vap* TAILQ_FIRST (int *) ;
 int device_printf (int ,char*,int) ;
 int rum_read (struct rum_softc*,int ) ;
 int rum_set_sleep_time (struct rum_softc*,int) ;
 scalar_t__ rum_write (struct rum_softc*,int ,int) ;

__attribute__((used)) static int
rum_enable_tsf_sync(struct rum_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct ieee80211vap *vap = TAILQ_FIRST(&ic->ic_vaps);
 uint32_t tmp;
 uint16_t bintval;

 if (vap->iv_opmode != 128) {




  if (rum_write(sc, RT2573_TXRX_CSR10, 1 << 12 | 8) != 0)
   return EIO;
 }

 tmp = rum_read(sc, RT2573_TXRX_CSR9) & 0xff000000;


 bintval = vap->iv_bss->ni_intval;
 tmp |= bintval * 16;
 tmp |= RT2573_TSF_TIMER_EN | RT2573_TBTT_TIMER_EN;

 switch (vap->iv_opmode) {
 case 128:




  tmp |= RT2573_TSF_SYNC_MODE(RT2573_TSF_SYNC_MODE_STA);
  break;
 case 129:




  tmp |= RT2573_TSF_SYNC_MODE(RT2573_TSF_SYNC_MODE_IBSS);
  tmp |= RT2573_BCN_TX_EN;
  break;
 case 130:

  tmp |= RT2573_TSF_SYNC_MODE(RT2573_TSF_SYNC_MODE_HOSTAP);
  tmp |= RT2573_BCN_TX_EN;
  break;
 default:
  device_printf(sc->sc_dev,
      "Enabling TSF failed. undefined opmode %d\n",
      vap->iv_opmode);
  return EINVAL;
 }

 if (rum_write(sc, RT2573_TXRX_CSR9, tmp) != 0)
  return EIO;


 return (rum_set_sleep_time(sc, bintval));
}
