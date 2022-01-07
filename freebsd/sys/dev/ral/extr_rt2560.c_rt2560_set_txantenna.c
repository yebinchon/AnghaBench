
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct rt2560_softc {scalar_t__ rf_rev; } ;


 int RAL_READ (struct rt2560_softc*,int ) ;
 int RAL_WRITE (struct rt2560_softc*,int ,int) ;
 int RT2560_BBPCSR1 ;
 int RT2560_BBP_ANTA ;
 int RT2560_BBP_ANTB ;
 int RT2560_BBP_ANTMASK ;
 int RT2560_BBP_DIVERSITY ;
 int RT2560_BBP_FLIPIQ ;
 int RT2560_BBP_TX ;
 scalar_t__ RT2560_RF_2525E ;
 scalar_t__ RT2560_RF_2526 ;
 scalar_t__ RT2560_RF_5222 ;
 int rt2560_bbp_read (struct rt2560_softc*,int ) ;
 int rt2560_bbp_write (struct rt2560_softc*,int ,int) ;

__attribute__((used)) static void
rt2560_set_txantenna(struct rt2560_softc *sc, int antenna)
{
 uint32_t tmp;
 uint8_t tx;

 tx = rt2560_bbp_read(sc, RT2560_BBP_TX) & ~RT2560_BBP_ANTMASK;
 if (antenna == 1)
  tx |= RT2560_BBP_ANTA;
 else if (antenna == 2)
  tx |= RT2560_BBP_ANTB;
 else
  tx |= RT2560_BBP_DIVERSITY;


 if (sc->rf_rev == RT2560_RF_2525E || sc->rf_rev == RT2560_RF_2526 ||
     sc->rf_rev == RT2560_RF_5222)
  tx |= RT2560_BBP_FLIPIQ;

 rt2560_bbp_write(sc, RT2560_BBP_TX, tx);


 tmp = RAL_READ(sc, RT2560_BBPCSR1) & ~0x00070007;
 tmp |= (tx & 0x7) << 16 | (tx & 0x7);
 RAL_WRITE(sc, RT2560_BBPCSR1, tmp);
}
