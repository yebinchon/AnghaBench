
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rt2860_softc {int dummy; } ;
struct ieee80211com {scalar_t__ ic_promisc; struct rt2860_softc* ic_softc; } ;


 int RAL_READ (struct rt2860_softc*,int ) ;
 int RAL_WRITE (struct rt2860_softc*,int ,int ) ;
 int RT2860_DROP_NOT_MYBSS ;
 int RT2860_RX_FILTR_CFG ;

__attribute__((used)) static void
rt2860_update_promisc(struct ieee80211com *ic)
{
 struct rt2860_softc *sc = ic->ic_softc;
 uint32_t tmp;

 tmp = RAL_READ(sc, RT2860_RX_FILTR_CFG);
 tmp &= ~RT2860_DROP_NOT_MYBSS;
 if (ic->ic_promisc == 0)
  tmp |= RT2860_DROP_NOT_MYBSS;
 RAL_WRITE(sc, RT2860_RX_FILTR_CFG, tmp);
}
