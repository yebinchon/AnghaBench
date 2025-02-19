
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct elink_phy {int dummy; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int CL22_RD_OVER_CL45 (struct bxe_softc*,struct elink_phy*,int ,int ,int*) ;
 int CL22_WR_OVER_CL45 (struct bxe_softc*,struct elink_phy*,int ,int ,int) ;
 int MDIO_CL73_IEEEB1_AN_ADV1 ;
 int MDIO_CL73_IEEEB1_AN_ADV1_PAUSE_BOTH ;
 int MDIO_CL73_IEEEB1_AN_ADV1_PAUSE_MASK ;
 int MDIO_COMBO_IEEE0_AUTO_NEG_ADV ;
 int MDIO_REG_BANK_CL73_IEEEB1 ;
 int MDIO_REG_BANK_COMBO_IEEE0 ;

__attribute__((used)) static void elink_set_ieee_aneg_advertisement(struct elink_phy *phy,
           struct elink_params *params,
           uint16_t ieee_fc)
{
 struct bxe_softc *sc = params->sc;
 uint16_t val;


 CL22_WR_OVER_CL45(sc, phy,
     MDIO_REG_BANK_COMBO_IEEE0,
     MDIO_COMBO_IEEE0_AUTO_NEG_ADV, ieee_fc);
 CL22_RD_OVER_CL45(sc, phy,
     MDIO_REG_BANK_CL73_IEEEB1,
     MDIO_CL73_IEEEB1_AN_ADV1, &val);
 val &= ~MDIO_CL73_IEEEB1_AN_ADV1_PAUSE_BOTH;
 val |= ((ieee_fc<<3) & MDIO_CL73_IEEEB1_AN_ADV1_PAUSE_MASK);
 CL22_WR_OVER_CL45(sc, phy,
     MDIO_REG_BANK_CL73_IEEEB1,
     MDIO_CL73_IEEEB1_AN_ADV1, val);
}
