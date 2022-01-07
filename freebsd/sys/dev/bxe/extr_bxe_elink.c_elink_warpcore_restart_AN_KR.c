
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct elink_phy {int dummy; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int CL22_WR_OVER_CL45 (struct bxe_softc*,struct elink_phy*,int ,int ,int ) ;
 int MDIO_AER_BLOCK_AER_REG ;
 int MDIO_AN_DEVAD ;
 int MDIO_REG_BANK_AER_BLOCK ;
 int MDIO_WC_REG_IEEE0BLK_MIICNTL ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int ,int ,int) ;
 int elink_get_warpcore_lane (struct elink_phy*,struct elink_params*) ;
 int elink_set_aer_mmd (struct elink_params*,struct elink_phy*) ;

__attribute__((used)) static void elink_warpcore_restart_AN_KR(struct elink_phy *phy,
      struct elink_params *params)
{

 struct bxe_softc *sc = params->sc;
 uint16_t lane = elink_get_warpcore_lane(phy, params);
 CL22_WR_OVER_CL45(sc, phy, MDIO_REG_BANK_AER_BLOCK,
     MDIO_AER_BLOCK_AER_REG, lane);
 elink_cl45_write(sc, phy, MDIO_AN_DEVAD,
    MDIO_WC_REG_IEEE0BLK_MIICNTL, 0x1200);


 elink_set_aer_mmd(params, phy);
}
