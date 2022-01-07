
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elink_phy {int dummy; } ;
struct bxe_softc {int dummy; } ;


 int MDIO_AN_DEVAD ;
 int MDIO_AN_REG_CTRL ;
 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_REG_10G_CTRL2 ;
 int MDIO_PMA_REG_BCM_CTRL ;
 int MDIO_PMA_REG_CTRL ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int ,int ,int) ;

__attribute__((used)) static void elink_807x_force_10G(struct bxe_softc *sc, struct elink_phy *phy)
{

 elink_cl45_write(sc, phy,
    MDIO_PMA_DEVAD, MDIO_PMA_REG_CTRL, 0x2040);
 elink_cl45_write(sc, phy,
    MDIO_PMA_DEVAD, MDIO_PMA_REG_10G_CTRL2, 0x000b);
 elink_cl45_write(sc, phy,
    MDIO_PMA_DEVAD, MDIO_PMA_REG_BCM_CTRL, 0x0000);
 elink_cl45_write(sc, phy,
    MDIO_AN_DEVAD, MDIO_AN_REG_CTRL, 0x0000);
}
