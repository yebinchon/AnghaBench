
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ural_softc {scalar_t__ rf_rev; } ;


 int RAL_BBP_ANTA ;
 int RAL_BBP_ANTB ;
 int RAL_BBP_ANTMASK ;
 int RAL_BBP_DIVERSITY ;
 int RAL_BBP_FLIPIQ ;
 int RAL_BBP_RX ;
 scalar_t__ RAL_RF_2525E ;
 scalar_t__ RAL_RF_2526 ;
 int ural_bbp_read (struct ural_softc*,int ) ;
 int ural_bbp_write (struct ural_softc*,int ,int) ;

__attribute__((used)) static void
ural_set_rxantenna(struct ural_softc *sc, int antenna)
{
 uint8_t rx;

 rx = ural_bbp_read(sc, RAL_BBP_RX) & ~RAL_BBP_ANTMASK;
 if (antenna == 1)
  rx |= RAL_BBP_ANTA;
 else if (antenna == 2)
  rx |= RAL_BBP_ANTB;
 else
  rx |= RAL_BBP_DIVERSITY;


 if (sc->rf_rev == RAL_RF_2525E || sc->rf_rev == RAL_RF_2526)
  rx &= ~RAL_BBP_FLIPIQ;

 ural_bbp_write(sc, RAL_BBP_RX, rx);
}
