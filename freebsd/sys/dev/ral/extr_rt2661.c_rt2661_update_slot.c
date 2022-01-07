
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct rt2661_softc {int dummy; } ;
struct ieee80211com {struct rt2661_softc* ic_softc; } ;


 int IEEE80211_GET_SLOTTIME (struct ieee80211com*) ;
 int RAL_READ (struct rt2661_softc*,int ) ;
 int RAL_WRITE (struct rt2661_softc*,int ,int) ;
 int RT2661_MAC_CSR9 ;

__attribute__((used)) static void
rt2661_update_slot(struct ieee80211com *ic)
{
 struct rt2661_softc *sc = ic->ic_softc;
 uint8_t slottime;
 uint32_t tmp;

 slottime = IEEE80211_GET_SLOTTIME(ic);

 tmp = RAL_READ(sc, RT2661_MAC_CSR9);
 tmp = (tmp & ~0xff) | slottime;
 RAL_WRITE(sc, RT2661_MAC_CSR9, tmp);
}
