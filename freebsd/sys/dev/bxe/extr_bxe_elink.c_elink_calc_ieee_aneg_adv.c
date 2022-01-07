
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct elink_phy {int req_flow_ctrl; } ;
struct elink_params {int req_fc_auto_adv; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int ELINK_DEBUG_P1 (struct bxe_softc*,char*,int ) ;





 int MDIO_COMBO_IEEE0_AUTO_NEG_ADV_FULL_DUPLEX ;
 int MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_ASYMMETRIC ;
 int MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH ;
 int MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_NONE ;

__attribute__((used)) static void elink_calc_ieee_aneg_adv(struct elink_phy *phy,
         struct elink_params *params, uint16_t *ieee_fc)
{
 struct bxe_softc *sc = params->sc;
 *ieee_fc = MDIO_COMBO_IEEE0_AUTO_NEG_ADV_FULL_DUPLEX;




 switch (phy->req_flow_ctrl) {
 case 132:
  switch (params->req_fc_auto_adv) {
  case 131:
  case 129:
   *ieee_fc |= MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH;
   break;
  case 128:
   *ieee_fc |=
    MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_ASYMMETRIC;
   break;
  default:
   break;
  }
  break;
 case 128:
  *ieee_fc |= MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_ASYMMETRIC;
  break;

 case 129:
 case 131:
  *ieee_fc |= MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH;
  break;

 case 130:
 default:
  *ieee_fc |= MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_NONE;
  break;
 }
 ELINK_DEBUG_P1(sc, "ieee_fc = 0x%x\n", *ieee_fc);
}
