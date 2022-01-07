
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct elink_phy {int dummy; } ;
struct bxe_softc {int dummy; } ;


 int DELAY (int) ;
 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_REG_7101_RESET ;
 int elink_cl45_read (struct bxe_softc*,struct elink_phy*,int ,int ,int*) ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int ,int ,int) ;

void elink_sfx7101_sp_sw_reset(struct bxe_softc *sc, struct elink_phy *phy)
{
 uint16_t val, cnt;

 elink_cl45_read(sc, phy,
   MDIO_PMA_DEVAD,
   MDIO_PMA_REG_7101_RESET, &val);

 for (cnt = 0; cnt < 10; cnt++) {
  DELAY(1000 * 50);

  elink_cl45_write(sc, phy,
     MDIO_PMA_DEVAD,
     MDIO_PMA_REG_7101_RESET,
     (val | (1<<15)));

  elink_cl45_read(sc, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_7101_RESET, &val);

  if ((val & (1<<15)) == 0)
   break;
 }
}
