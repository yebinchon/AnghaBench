
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct rt2860_softc {int mac_ver; int mac_rev; scalar_t__ patch_dac; } ;


 int RAL_READ (struct rt2860_softc*,int ) ;
 int RAL_WRITE (struct rt2860_softc*,int ,int) ;
 int RT3070_LDO_CFG0 ;
 int RT3070_RF_BLOCK ;
 int RT3070_RX_CTB ;
 int RT3593_CP_IC_MASK ;
 int RT3593_CP_IC_SHIFT ;
 int RT3593_LDO_PLL_VC_MASK ;
 int RT3593_LDO_RF_VC_MASK ;
 int RT3593_RESCAL ;
 int RT3593_RX_CTB ;
 int RT3593_VCO ;
 int RT3593_VCOCAL ;
 int RT3593_VCO_IC ;
 int rt3090_rf_read (struct rt2860_softc*,int) ;
 int rt3090_rf_write (struct rt2860_softc*,int,int) ;

__attribute__((used)) static void
rt3090_rf_wakeup(struct rt2860_softc *sc)
{
 uint32_t tmp;
 uint8_t rf;

 if (sc->mac_ver == 0x3593) {

  rf = rt3090_rf_read(sc, 1);
  rt3090_rf_write(sc, 1, rf | RT3593_VCO);


  rf = rt3090_rf_read(sc, 3);
  rt3090_rf_write(sc, 3, rf | RT3593_VCOCAL);


  rf = rt3090_rf_read(sc, 6);
  rt3090_rf_write(sc, 6, rf | RT3593_VCO_IC);


  rf = rt3090_rf_read(sc, 2);
  rt3090_rf_write(sc, 2, rf | RT3593_RESCAL);


  rf = rt3090_rf_read(sc, 22);
  rf &= ~RT3593_CP_IC_MASK;
  rf |= 1 << RT3593_CP_IC_SHIFT;
  rt3090_rf_write(sc, 22, rf);


  rf = rt3090_rf_read(sc, 46);
  rt3090_rf_write(sc, 46, rf | RT3593_RX_CTB);

  rf = rt3090_rf_read(sc, 20);
  rf &= ~(RT3593_LDO_RF_VC_MASK | RT3593_LDO_PLL_VC_MASK);
  rt3090_rf_write(sc, 20, rf);
 } else {

  rf = rt3090_rf_read(sc, 1);
  rt3090_rf_write(sc, 1, rf | RT3070_RF_BLOCK);


  rf = rt3090_rf_read(sc, 7);
  rt3090_rf_write(sc, 7, rf | 0x30);

  rf = rt3090_rf_read(sc, 9);
  rt3090_rf_write(sc, 9, rf | 0x0e);


  rf = rt3090_rf_read(sc, 21);
  rt3090_rf_write(sc, 21, rf | RT3070_RX_CTB);


  rf = rt3090_rf_read(sc, 27);
  rf &= ~0x77;
  if (sc->mac_rev < 0x0211)
   rf |= 0x03;
  rt3090_rf_write(sc, 27, rf);
 }
 if (sc->patch_dac && sc->mac_rev < 0x0211) {
  tmp = RAL_READ(sc, RT3070_LDO_CFG0);
  tmp = (tmp & ~0x1f000000) | 0x0d000000;
  RAL_WRITE(sc, RT3070_LDO_CFG0, tmp);
 }
}
