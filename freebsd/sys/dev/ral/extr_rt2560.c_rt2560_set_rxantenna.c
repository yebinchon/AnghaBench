
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rt2560_softc {scalar_t__ rf_rev; } ;


 int RT2560_BBP_ANTA ;
 int RT2560_BBP_ANTB ;
 int RT2560_BBP_ANTMASK ;
 int RT2560_BBP_DIVERSITY ;
 int RT2560_BBP_FLIPIQ ;
 int RT2560_BBP_RX ;
 scalar_t__ RT2560_RF_2525E ;
 scalar_t__ RT2560_RF_2526 ;
 int rt2560_bbp_read (struct rt2560_softc*,int ) ;
 int rt2560_bbp_write (struct rt2560_softc*,int ,int) ;

__attribute__((used)) static void
rt2560_set_rxantenna(struct rt2560_softc *sc, int antenna)
{
 uint8_t rx;

 rx = rt2560_bbp_read(sc, RT2560_BBP_RX) & ~RT2560_BBP_ANTMASK;
 if (antenna == 1)
  rx |= RT2560_BBP_ANTA;
 else if (antenna == 2)
  rx |= RT2560_BBP_ANTB;
 else
  rx |= RT2560_BBP_DIVERSITY;


 if (sc->rf_rev == RT2560_RF_2525E || sc->rf_rev == RT2560_RF_2526)
  rx &= ~RT2560_BBP_FLIPIQ;

 rt2560_bbp_write(sc, RT2560_BBP_RX, rx);
}
