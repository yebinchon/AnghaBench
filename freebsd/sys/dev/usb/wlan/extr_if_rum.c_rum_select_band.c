
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rum_softc {int bbp17; scalar_t__ ext_5ghz_lna; scalar_t__ ext_2ghz_lna; } ;
struct ieee80211_channel {int dummy; } ;


 scalar_t__ IEEE80211_IS_CHAN_2GHZ (struct ieee80211_channel*) ;
 scalar_t__ IEEE80211_IS_CHAN_5GHZ (struct ieee80211_channel*) ;
 int RT2573_PA_PE_2GHZ ;
 int RT2573_PA_PE_5GHZ ;
 int RT2573_PHY_CSR0 ;
 int rum_bbp_write (struct rum_softc*,int,int) ;
 int rum_modbits (struct rum_softc*,int ,int ,int ) ;

__attribute__((used)) static void
rum_select_band(struct rum_softc *sc, struct ieee80211_channel *c)
{
 uint8_t bbp17, bbp35, bbp96, bbp97, bbp98, bbp104;


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

 sc->bbp17 = bbp17;
 rum_bbp_write(sc, 17, bbp17);
 rum_bbp_write(sc, 96, bbp96);
 rum_bbp_write(sc, 104, bbp104);

 if ((IEEE80211_IS_CHAN_2GHZ(c) && sc->ext_2ghz_lna) ||
     (IEEE80211_IS_CHAN_5GHZ(c) && sc->ext_5ghz_lna)) {
  rum_bbp_write(sc, 75, 0x80);
  rum_bbp_write(sc, 86, 0x80);
  rum_bbp_write(sc, 88, 0x80);
 }

 rum_bbp_write(sc, 35, bbp35);
 rum_bbp_write(sc, 97, bbp97);
 rum_bbp_write(sc, 98, bbp98);

 if (IEEE80211_IS_CHAN_2GHZ(c)) {
  rum_modbits(sc, RT2573_PHY_CSR0, RT2573_PA_PE_2GHZ,
      RT2573_PA_PE_5GHZ);
 } else {
  rum_modbits(sc, RT2573_PHY_CSR0, RT2573_PA_PE_5GHZ,
      RT2573_PA_PE_2GHZ);
 }
}
