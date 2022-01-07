
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rt2860_softc {int dummy; } ;
struct ieee80211com {struct rt2860_softc* ic_softc; } ;


 int IEEE80211_GET_SLOTTIME (struct ieee80211com*) ;
 int RAL_READ (struct rt2860_softc*,int ) ;
 int RAL_WRITE (struct rt2860_softc*,int ,int) ;
 int RT2860_BKOFF_SLOT_CFG ;

__attribute__((used)) static void
rt2860_updateslot(struct ieee80211com *ic)
{
 struct rt2860_softc *sc = ic->ic_softc;
 uint32_t tmp;

 tmp = RAL_READ(sc, RT2860_BKOFF_SLOT_CFG);
 tmp &= ~0xff;
 tmp |= IEEE80211_GET_SLOTTIME(ic);
 RAL_WRITE(sc, RT2860_BKOFF_SLOT_CFG, tmp);
}
