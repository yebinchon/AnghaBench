
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct elink_phy {int flags; } ;
struct bxe_softc {int dummy; } ;


 int ELINK_FLAGS_NOC ;
 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_REG_8727_GPIO_CTRL ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int ,int ,int) ;

__attribute__((used)) static void elink_8727_power_module(struct bxe_softc *sc,
        struct elink_phy *phy,
        uint8_t is_power_up) {

 uint16_t val;
 if (phy->flags & ELINK_FLAGS_NOC)
  return;
 if (is_power_up)
  val = (1<<4);
 else



  val = (1<<1);

 elink_cl45_write(sc, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_8727_GPIO_CTRL,
    val);
}
