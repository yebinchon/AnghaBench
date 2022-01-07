
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct elink_vars {int link_status; } ;
struct elink_phy {int dummy; } ;
struct bxe_softc {int dummy; } ;


 int LINK_STATUS_AUTO_NEGOTIATE_COMPLETE ;
 int LINK_STATUS_PARALLEL_DETECTION_USED ;
 int MDIO_AN_DEVAD ;
 int MDIO_AN_REG_STATUS ;
 int elink_cl45_read (struct bxe_softc*,struct elink_phy*,int ,int ,int*) ;

__attribute__((used)) static void elink_ext_phy_10G_an_resolve(struct bxe_softc *sc,
           struct elink_phy *phy,
           struct elink_vars *vars)
{
 uint16_t val;
 elink_cl45_read(sc, phy,
   MDIO_AN_DEVAD,
   MDIO_AN_REG_STATUS, &val);
 elink_cl45_read(sc, phy,
   MDIO_AN_DEVAD,
   MDIO_AN_REG_STATUS, &val);
 if (val & (1<<5))
  vars->link_status |= LINK_STATUS_AUTO_NEGOTIATE_COMPLETE;
 if ((val & (1<<0)) == 0)
  vars->link_status |= LINK_STATUS_PARALLEL_DETECTION_USED;
}
