
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct rt2860_softc {int mac_rev; int mac_ver; TYPE_1__* rf; scalar_t__ patch_dac; } ;
struct TYPE_2__ {int reg; int val; } ;


 int RAL_WRITE (struct rt2860_softc*,int ,int) ;
 int RT2860_TX_SW_CFG1 ;
 int RT2860_TX_SW_CFG2 ;
 int rt2860_mcu_bbp_read (struct rt2860_softc*,int) ;
 int rt2860_mcu_bbp_write (struct rt2860_softc*,int,int) ;
 int rt3090_rf_write (struct rt2860_softc*,int,int ) ;

__attribute__((used)) static void
rt3090_rf_setup(struct rt2860_softc *sc)
{
 uint8_t bbp;
 int i;

 if (sc->mac_rev >= 0x0211) {

  rt2860_mcu_bbp_write(sc, 103, 0xc0);


  bbp = rt2860_mcu_bbp_read(sc, 31);
  rt2860_mcu_bbp_write(sc, 31, bbp & ~0x03);
 }

 RAL_WRITE(sc, RT2860_TX_SW_CFG1, 0);
 if (sc->mac_rev < 0x0211) {
  RAL_WRITE(sc, RT2860_TX_SW_CFG2,
      sc->patch_dac ? 0x2c : 0x0f);
 } else
  RAL_WRITE(sc, RT2860_TX_SW_CFG2, 0);


 if (sc->mac_ver < 0x5390) {
  for (i = 0; i < 10; i++) {
   if (sc->rf[i].reg == 0 || sc->rf[i].reg == 0xff)
    continue;
   rt3090_rf_write(sc, sc->rf[i].reg, sc->rf[i].val);
  }
 }
}
