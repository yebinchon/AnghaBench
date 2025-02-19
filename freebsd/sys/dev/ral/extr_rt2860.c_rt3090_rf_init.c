
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct rt2860_softc {int mac_rev; int mac_ver; int rf24_20mhz; int rf24_40mhz; scalar_t__ rf_rev; int ntxchains; int nrxchains; int txmixgain_2ghz; int ext_2ghz_lna; scalar_t__ patch_dac; } ;
struct TYPE_3__ {int reg; int val; } ;


 int DELAY (int) ;
 int RAL_READ (struct rt2860_softc*,int ) ;
 int RAL_WRITE (struct rt2860_softc*,int ,int) ;
 int RT3070_GPIO_SWITCH ;
 int RT3070_LDO_CFG0 ;
 int RT3070_OPT_14 ;
 scalar_t__ RT3070_RF_3020 ;
 int RT3070_RF_BLOCK ;
 int RT3070_RX0_PD ;
 int RT3070_RX1_PD ;
 int RT3070_RX_LO1 ;
 int RT3070_RX_LO2 ;
 int RT3070_TX0_PD ;
 int RT3070_TX1_PD ;
 int RT3070_TX_LO1 ;
 int RT3070_TX_LO2 ;
 int nitems (TYPE_1__*) ;
 int rt2860_mcu_bbp_read (struct rt2860_softc*,int) ;
 int rt2860_mcu_bbp_write (struct rt2860_softc*,int,int) ;
 TYPE_1__* rt3090_def_rf ;
 int rt3090_filter_calib (struct rt2860_softc*,int,int,int*) ;
 int rt3090_rf_read (struct rt2860_softc*,int) ;
 int rt3090_rf_write (struct rt2860_softc*,int,int) ;
 int rt3090_set_rx_antenna (struct rt2860_softc*,int ) ;

__attribute__((used)) static int
rt3090_rf_init(struct rt2860_softc *sc)
{
 uint32_t tmp;
 uint8_t rf, bbp;
 int i;

 rf = rt3090_rf_read(sc, 30);

 rt3090_rf_write(sc, 30, rf | 0x80);
 DELAY(1000);
 rt3090_rf_write(sc, 30, rf & ~0x80);

 tmp = RAL_READ(sc, RT3070_LDO_CFG0);
 tmp &= ~0x1f000000;
 if (sc->patch_dac && sc->mac_rev < 0x0211)
  tmp |= 0x0d000000;
 else
  tmp |= 0x01000000;
 RAL_WRITE(sc, RT3070_LDO_CFG0, tmp);


 tmp = RAL_READ(sc, RT3070_GPIO_SWITCH);
 RAL_WRITE(sc, RT3070_GPIO_SWITCH, tmp & ~0x20);


 for (i = 0; i < nitems(rt3090_def_rf); i++) {
  rt3090_rf_write(sc, rt3090_def_rf[i].reg,
      rt3090_def_rf[i].val);
 }


 rt3090_rf_write(sc, 31, 0x14);

 rf = rt3090_rf_read(sc, 6);
 rt3090_rf_write(sc, 6, rf | 0x40);

 if (sc->mac_ver != 0x3593) {

  sc->rf24_20mhz = 0x1f;
  rt3090_filter_calib(sc, 0x07, 0x16, &sc->rf24_20mhz);


  bbp = rt2860_mcu_bbp_read(sc, 4);
  rt2860_mcu_bbp_write(sc, 4, (bbp & ~0x08) | 0x10);
  rf = rt3090_rf_read(sc, 31);
  rt3090_rf_write(sc, 31, rf | 0x20);


  sc->rf24_40mhz = 0x2f;
  rt3090_filter_calib(sc, 0x27, 0x19, &sc->rf24_40mhz);


  bbp = rt2860_mcu_bbp_read(sc, 4);
  rt2860_mcu_bbp_write(sc, 4, bbp & ~0x18);
 }
 if (sc->mac_rev < 0x0211)
  rt3090_rf_write(sc, 27, 0x03);

 tmp = RAL_READ(sc, RT3070_OPT_14);
 RAL_WRITE(sc, RT3070_OPT_14, tmp | 1);

 if (sc->rf_rev == RT3070_RF_3020)
  rt3090_set_rx_antenna(sc, 0);

 bbp = rt2860_mcu_bbp_read(sc, 138);
 if (sc->mac_ver == 0x3593) {
  if (sc->ntxchains == 1)
   bbp |= 0x60;
  else if (sc->ntxchains == 2)
   bbp |= 0x40;
  if (sc->nrxchains == 1)
   bbp &= ~0x06;
  else if (sc->nrxchains == 2)
   bbp &= ~0x04;
 } else {
  if (sc->ntxchains == 1)
   bbp |= 0x20;
  if (sc->nrxchains == 1)
   bbp &= ~0x02;
 }
 rt2860_mcu_bbp_write(sc, 138, bbp);

 rf = rt3090_rf_read(sc, 1);
 rf &= ~(RT3070_RX0_PD | RT3070_TX0_PD);
 rf |= RT3070_RF_BLOCK | RT3070_RX1_PD | RT3070_TX1_PD;
 rt3090_rf_write(sc, 1, rf);

 rf = rt3090_rf_read(sc, 15);
 rt3090_rf_write(sc, 15, rf & ~RT3070_TX_LO2);

 rf = rt3090_rf_read(sc, 17);
 rf &= ~RT3070_TX_LO1;
 if (sc->mac_rev >= 0x0211 && !sc->ext_2ghz_lna)
  rf |= 0x20;
 if (sc->txmixgain_2ghz >= 2)
  rf = (rf & ~0x7) | sc->txmixgain_2ghz;
 rt3090_rf_write(sc, 17, rf);

 rf = rt3090_rf_read(sc, 20);
 rt3090_rf_write(sc, 20, rf & ~RT3070_RX_LO1);

 rf = rt3090_rf_read(sc, 21);
 rt3090_rf_write(sc, 21, rf & ~RT3070_RX_LO2);

 return (0);
}
