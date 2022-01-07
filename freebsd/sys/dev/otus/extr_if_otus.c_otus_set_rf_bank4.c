
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct otus_softc {int dummy; } ;
struct ieee80211_channel {int ic_freq; } ;


 int AR_BANK4_ADDR (int) ;
 int AR_BANK4_AMODE_REFSEL (int) ;
 int AR_BANK4_BMODE_LF_SYNTH_FREQ ;
 int AR_BANK4_CHUP ;
 int AR_PHY (int) ;
 scalar_t__ IEEE80211_IS_CHAN_5GHZ (struct ieee80211_channel*) ;
 int OTUS_LOCK_ASSERT (struct otus_softc*) ;
 int otus_delay_ms (struct otus_softc*,int) ;
 int otus_reverse_bits (int) ;
 int otus_write (struct otus_softc*,int ,int) ;
 int otus_write_barrier (struct otus_softc*) ;

int
otus_set_rf_bank4(struct otus_softc *sc, struct ieee80211_channel *c)
{
 uint8_t chansel, d0, d1;
 uint16_t data;
 int error;

 OTUS_LOCK_ASSERT(sc);

 d0 = 0;
 if (IEEE80211_IS_CHAN_5GHZ(c)) {
  chansel = (c->ic_freq - 4800) / 5;
  if (chansel & 1)
   d0 |= AR_BANK4_AMODE_REFSEL(2);
  else
   d0 |= AR_BANK4_AMODE_REFSEL(1);
 } else {
  d0 |= AR_BANK4_AMODE_REFSEL(2);
  if (c->ic_freq == 2484) {
   d0 |= AR_BANK4_BMODE_LF_SYNTH_FREQ;
   chansel = 10 + (c->ic_freq - 2274) / 5;
  } else
   chansel = 16 + (c->ic_freq - 2272) / 5;
  chansel <<= 2;
 }
 d0 |= AR_BANK4_ADDR(1) | AR_BANK4_CHUP;
 d1 = otus_reverse_bits(chansel);


 data = (d1 & 0x1f) << 5 | (d0 & 0x1f);
 otus_write(sc, AR_PHY(44), data);

 data = (d1 >> 5) << 5 | (d0 >> 5);
 otus_write(sc, AR_PHY(58), data);

 if ((error = otus_write_barrier(sc)) == 0)
  otus_delay_ms(sc, 10);
 return error;
}
