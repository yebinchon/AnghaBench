
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct rt2661_softc {scalar_t__ ext_5ghz_lna; scalar_t__ ext_2ghz_lna; } ;
struct ieee80211_channel {int dummy; } ;


 scalar_t__ IEEE80211_IS_CHAN_2GHZ (struct ieee80211_channel*) ;
 scalar_t__ IEEE80211_IS_CHAN_5GHZ (struct ieee80211_channel*) ;
 int RAL_READ (struct rt2661_softc*,int ) ;
 int RAL_WRITE (struct rt2661_softc*,int ,int) ;
 int RT2661_PA_PE_2GHZ ;
 int RT2661_PA_PE_5GHZ ;
 int RT2661_PHY_CSR0 ;
 int rt2661_bbp_write (struct rt2661_softc*,int,int) ;

__attribute__((used)) static void
rt2661_select_band(struct rt2661_softc *sc, struct ieee80211_channel *c)
{
 uint8_t bbp17, bbp35, bbp96, bbp97, bbp98, bbp104;
 uint32_t tmp;


 bbp17 = 0x20; bbp96 = 0x48; bbp104 = 0x2c;
 bbp35 = 0x50; bbp97 = 0x48; bbp98 = 0x48;
 if (IEEE80211_IS_CHAN_5GHZ(c)) {
  bbp17 += 0x08; bbp96 += 0x10; bbp104 += 0x0c;
  bbp35 += 0x10; bbp97 += 0x10; bbp98 += 0x10;
 }
 if ((IEEE80211_IS_CHAN_2GHZ(c) && sc->ext_2ghz_lna) ||
     (IEEE80211_IS_CHAN_5GHZ(c) && sc->ext_5ghz_lna)) {
  bbp17 += 0x10; bbp96 += 0x10; bbp104 += 0x10;
 }

 rt2661_bbp_write(sc, 17, bbp17);
 rt2661_bbp_write(sc, 96, bbp96);
 rt2661_bbp_write(sc, 104, bbp104);

 if ((IEEE80211_IS_CHAN_2GHZ(c) && sc->ext_2ghz_lna) ||
     (IEEE80211_IS_CHAN_5GHZ(c) && sc->ext_5ghz_lna)) {
  rt2661_bbp_write(sc, 75, 0x80);
  rt2661_bbp_write(sc, 86, 0x80);
  rt2661_bbp_write(sc, 88, 0x80);
 }

 rt2661_bbp_write(sc, 35, bbp35);
 rt2661_bbp_write(sc, 97, bbp97);
 rt2661_bbp_write(sc, 98, bbp98);

 tmp = RAL_READ(sc, RT2661_PHY_CSR0);
 tmp &= ~(RT2661_PA_PE_2GHZ | RT2661_PA_PE_5GHZ);
 if (IEEE80211_IS_CHAN_2GHZ(c))
  tmp |= RT2661_PA_PE_2GHZ;
 else
  tmp |= RT2661_PA_PE_5GHZ;
 RAL_WRITE(sc, RT2661_PHY_CSR0, tmp);
}
