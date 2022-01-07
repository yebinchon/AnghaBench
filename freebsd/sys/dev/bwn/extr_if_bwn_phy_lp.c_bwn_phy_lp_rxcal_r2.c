
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
struct bwn_wpair {int member_1; int value; int const reg; int const member_0; } ;
struct bwn_softc {int sc_dev; } ;
struct bwn_mac {struct bwn_softc* mac_sc; } ;


 int BHND_CLOCK_ALP ;
 int const BWN_B2063_PA_SP7 ;
 int BWN_B2063_PLL_SP1 ;





 int const BWN_B2063_RC_CALIB_CTL6 ;


 int BWN_RF_MASK (struct bwn_mac*,int ,int) ;
 int BWN_RF_READ (struct bwn_mac*,int const) ;
 int BWN_RF_WRITE (struct bwn_mac*,int const,int) ;
 int DELAY (int) ;
 int N (struct bwn_wpair const*) ;
 int bhnd_get_clock_freq (int ,int ,int*) ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static int
bwn_phy_lp_rxcal_r2(struct bwn_mac *mac)
{
 struct bwn_softc *sc = mac->mac_sc;
 static const struct bwn_wpair v1[] = {
  { 129, 0x0 },
  { 134, 0x7e },
  { 134, 0x7c },
  { 133, 0x15 },
  { 132, 0x70 },
  { 131, 0x52 },
  { 130, 0x1 },
  { 134, 0x7d }
 };
 static const struct bwn_wpair v2[] = {
  { 128, 0x0 },
  { 134, 0x7e },
  { 134, 0x7c },
  { 133, 0x55 },
  { 132, 0x76 }
 };
 u_int freqxtal;
 int error, i;
 uint8_t tmp;

 error = bhnd_get_clock_freq(sc->sc_dev, BHND_CLOCK_ALP, &freqxtal);
 if (error) {
  device_printf(sc->sc_dev, "failed to fetch clock frequency: %d",
      error);
  return (error);
 }

 tmp = BWN_RF_READ(mac, 129) & 0xff;

 for (i = 0; i < 2; i++)
  BWN_RF_WRITE(mac, v1[i].reg, v1[i].value);
 BWN_RF_MASK(mac, BWN_B2063_PLL_SP1, 0xf7);
 for (i = 2; i < N(v1); i++)
  BWN_RF_WRITE(mac, v1[i].reg, v1[i].value);
 for (i = 0; i < 10000; i++) {
  if (BWN_RF_READ(mac, BWN_B2063_RC_CALIB_CTL6) & 0x2)
   break;
  DELAY(1000);
 }

 if (!(BWN_RF_READ(mac, BWN_B2063_RC_CALIB_CTL6) & 0x2))
  BWN_RF_WRITE(mac, 129, tmp);

 tmp = BWN_RF_READ(mac, 128) & 0xff;

 for (i = 0; i < N(v2); i++)
  BWN_RF_WRITE(mac, v2[i].reg, v2[i].value);
 if (freqxtal == 24000000) {
  BWN_RF_WRITE(mac, 131, 0xfc);
  BWN_RF_WRITE(mac, 130, 0x0);
 } else {
  BWN_RF_WRITE(mac, 131, 0x13);
  BWN_RF_WRITE(mac, 130, 0x1);
 }
 BWN_RF_WRITE(mac, BWN_B2063_PA_SP7, 0x7d);
 for (i = 0; i < 10000; i++) {
  if (BWN_RF_READ(mac, BWN_B2063_RC_CALIB_CTL6) & 0x2)
   break;
  DELAY(1000);
 }
 if (!(BWN_RF_READ(mac, BWN_B2063_RC_CALIB_CTL6) & 0x2))
  BWN_RF_WRITE(mac, 128, tmp);
 BWN_RF_WRITE(mac, 134, 0x7e);

 return (0);
}
