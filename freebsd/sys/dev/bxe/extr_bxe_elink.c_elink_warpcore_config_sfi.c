
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct elink_phy {scalar_t__ media_type; } ;
struct elink_params {scalar_t__* req_line_speed; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 scalar_t__ ELINK_ETH_PHY_SFP_1G_FIBER ;
 int ELINK_INT_PHY ;
 size_t ELINK_LINK_CONFIG_IDX (int ) ;
 scalar_t__ ELINK_SPEED_10000 ;
 int elink_get_warpcore_lane (struct elink_phy*,struct elink_params*) ;
 int elink_warpcore_clear_regs (struct elink_phy*,struct elink_params*,int ) ;
 int elink_warpcore_set_10G_XFI (struct elink_phy*,struct elink_params*,int ) ;
 int elink_warpcore_set_sgmii_speed (struct elink_phy*,struct elink_params*,int,int ) ;

__attribute__((used)) static void elink_warpcore_config_sfi(struct elink_phy *phy,
          struct elink_params *params)
{
 uint16_t lane = elink_get_warpcore_lane(phy, params);
 struct bxe_softc *sc = params->sc;
 elink_warpcore_clear_regs(phy, params, lane);
 if ((params->req_line_speed[ELINK_LINK_CONFIG_IDX(ELINK_INT_PHY)] ==
      ELINK_SPEED_10000) &&
     (phy->media_type != ELINK_ETH_PHY_SFP_1G_FIBER)) {
  ELINK_DEBUG_P0(sc, "Setting 10G SFI\n");
  elink_warpcore_set_10G_XFI(phy, params, 0);
 } else {
  ELINK_DEBUG_P0(sc, "Setting 1G Fiber\n");
  elink_warpcore_set_sgmii_speed(phy, params, 1, 0);
 }
}
