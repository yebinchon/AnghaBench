
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct elink_vars {int link_status; int duplex; int line_speed; } ;
struct elink_phy {int dummy; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int DUPLEX_FULL ;
 int ELINK_DEBUG_P2 (struct bxe_softc*,char*,int,int) ;
 int ELINK_SPEED_10000 ;
 int LINK_STATUS_LINK_PARTNER_10GXFD_CAPABLE ;
 int MDIO_AN_DEVAD ;
 int MDIO_AN_REG_MASTER_STATUS ;
 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_LASI_STAT ;
 int MDIO_PMA_REG_STATUS ;
 int elink_cl45_read (struct bxe_softc*,struct elink_phy*,int ,int ,int*) ;
 int elink_ext_phy_10G_an_resolve (struct bxe_softc*,struct elink_phy*,struct elink_vars*) ;
 int elink_ext_phy_resolve_fc (struct elink_phy*,struct elink_params*,struct elink_vars*) ;

__attribute__((used)) static uint8_t elink_7101_read_status(struct elink_phy *phy,
     struct elink_params *params,
     struct elink_vars *vars)
{
 struct bxe_softc *sc = params->sc;
 uint8_t link_up;
 uint16_t val1, val2;
 elink_cl45_read(sc, phy,
   MDIO_PMA_DEVAD, MDIO_PMA_LASI_STAT, &val2);
 elink_cl45_read(sc, phy,
   MDIO_PMA_DEVAD, MDIO_PMA_LASI_STAT, &val1);
 ELINK_DEBUG_P2(sc, "10G-base-T LASI status 0x%x->0x%x\n",
     val2, val1);
 elink_cl45_read(sc, phy,
   MDIO_PMA_DEVAD, MDIO_PMA_REG_STATUS, &val2);
 elink_cl45_read(sc, phy,
   MDIO_PMA_DEVAD, MDIO_PMA_REG_STATUS, &val1);
 ELINK_DEBUG_P2(sc, "10G-base-T PMA status 0x%x->0x%x\n",
     val2, val1);
 link_up = ((val1 & 4) == 4);

 if (link_up) {
  elink_cl45_read(sc, phy,
    MDIO_AN_DEVAD, MDIO_AN_REG_MASTER_STATUS,
    &val2);
  vars->line_speed = ELINK_SPEED_10000;
  vars->duplex = DUPLEX_FULL;
  ELINK_DEBUG_P2(sc, "SFX7101 AN status 0x%x->Master=%x\n",
      val2, (val2 & (1<<14)));
  elink_ext_phy_10G_an_resolve(sc, phy, vars);
  elink_ext_phy_resolve_fc(phy, params, vars);


  if (val2 & (1<<11))
   vars->link_status |=
    LINK_STATUS_LINK_PARTNER_10GXFD_CAPABLE;
 }
 return link_up;
}
