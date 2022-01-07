
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct elink_phy {scalar_t__ type; int addr; int flags; } ;
struct elink_params {int lane_config; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 scalar_t__ CHIP_IS_E2 (struct bxe_softc*) ;
 int CL22_WR_OVER_CL45 (struct bxe_softc*,struct elink_phy*,int ,int ,int) ;
 int ELINK_FLAGS_WC_DUAL_MODE ;
 int MDIO_AER_BLOCK_AER_REG ;
 int MDIO_REG_BANK_AER_BLOCK ;
 int PORT_HW_CFG_LANE_SWAP_CFG_MASTER_MASK ;
 int PORT_HW_CFG_LANE_SWAP_CFG_MASTER_SHIFT ;
 scalar_t__ PORT_HW_CFG_XGXS_EXT_PHY_TYPE_DIRECT ;
 scalar_t__ USES_WARPCORE (struct bxe_softc*) ;
 int elink_get_warpcore_lane (struct elink_phy*,struct elink_params*) ;

__attribute__((used)) static void elink_set_aer_mmd(struct elink_params *params,
         struct elink_phy *phy)
{
 uint32_t ser_lane;
 uint16_t offset, aer_val;
 struct bxe_softc *sc = params->sc;
 ser_lane = ((params->lane_config &
       PORT_HW_CFG_LANE_SWAP_CFG_MASTER_MASK) >>
       PORT_HW_CFG_LANE_SWAP_CFG_MASTER_SHIFT);

 offset = (phy->type == PORT_HW_CFG_XGXS_EXT_PHY_TYPE_DIRECT) ?
  (phy->addr + ser_lane) : 0;

 if (USES_WARPCORE(sc)) {
  aer_val = elink_get_warpcore_lane(phy, params);






  if (phy->flags & ELINK_FLAGS_WC_DUAL_MODE)
   aer_val = (aer_val >> 1) | 0x200;
 } else if (CHIP_IS_E2(sc))
  aer_val = 0x3800 + offset - 1;
 else
  aer_val = 0x3800 + offset;

 CL22_WR_OVER_CL45(sc, phy, MDIO_REG_BANK_AER_BLOCK,
     MDIO_AER_BLOCK_AER_REG, aer_val);

}
