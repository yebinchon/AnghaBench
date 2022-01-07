
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elink_phy {int dummy; } ;
struct elink_params {int sc; } ;


 int MDIO_AN_DEVAD ;
 int MDIO_AN_REG_CTRL ;
 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_REG_CTRL ;
 int elink_cl45_write (int ,struct elink_phy*,int ,int ,int) ;

__attribute__((used)) static void elink_8481_link_reset(struct elink_phy *phy,
     struct elink_params *params)
{
 elink_cl45_write(params->sc, phy,
    MDIO_AN_DEVAD, MDIO_AN_REG_CTRL, 0x0000);
 elink_cl45_write(params->sc, phy,
    MDIO_PMA_DEVAD, MDIO_PMA_REG_CTRL, 1);
}
