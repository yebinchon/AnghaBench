
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct elink_vars {int ieee_fc; } ;
struct elink_phy {int dummy; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int ELINK_DEBUG_P1 (struct bxe_softc*,char*,int ) ;
 int MDIO_AN_DEVAD ;
 int MDIO_AN_REG_ADV_PAUSE ;
 int MDIO_AN_REG_ADV_PAUSE_ASYMMETRIC ;
 int MDIO_AN_REG_ADV_PAUSE_BOTH ;
 int MDIO_AN_REG_ADV_PAUSE_PAUSE ;
 int MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_ASYMMETRIC ;
 int MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH ;
 int elink_calc_ieee_aneg_adv (struct elink_phy*,struct elink_params*,int*) ;
 int elink_cl45_read (struct bxe_softc*,struct elink_phy*,int ,int ,int *) ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int ,int ,int ) ;

__attribute__((used)) static void elink_ext_phy_set_pause(struct elink_params *params,
        struct elink_phy *phy,
        struct elink_vars *vars)
{
 uint16_t val;
 struct bxe_softc *sc = params->sc;

 elink_cl45_read(sc, phy, MDIO_AN_DEVAD, MDIO_AN_REG_ADV_PAUSE, &val);

 val &= ~MDIO_AN_REG_ADV_PAUSE_BOTH;


 elink_calc_ieee_aneg_adv(phy, params, &vars->ieee_fc);
 if ((vars->ieee_fc &
     MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_ASYMMETRIC) ==
     MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_ASYMMETRIC) {
  val |= MDIO_AN_REG_ADV_PAUSE_ASYMMETRIC;
 }
 if ((vars->ieee_fc &
     MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH) ==
     MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH) {
  val |= MDIO_AN_REG_ADV_PAUSE_PAUSE;
 }
 ELINK_DEBUG_P1(sc, "Ext phy AN advertize 0x%x\n", val);
 elink_cl45_write(sc, phy, MDIO_AN_DEVAD, MDIO_AN_REG_ADV_PAUSE, val);
}
