
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct elink_vars {scalar_t__ check_kr2_recovery_cnt; } ;
struct elink_phy {int dummy; } ;
struct elink_params {int link_attr_sync; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int CL22_WR_OVER_CL45 (struct bxe_softc*,struct elink_phy*,int ,int ,int) ;
 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 int ELINK_DEBUG_P2 (struct bxe_softc*,char*,int,int) ;
 int LINK_ATTR_SYNC_KR2_ENABLE ;
 int MDIO_AER_BLOCK_AER_REG ;
 int MDIO_AN_DEVAD ;
 int MDIO_AN_REG_LP_AUTO_NEG ;
 int MDIO_AN_REG_LP_AUTO_NEG2 ;
 int MDIO_REG_BANK_AER_BLOCK ;
 int elink_cl45_read (struct bxe_softc*,struct elink_phy*,int ,int ,int*) ;
 int elink_disable_kr2 (struct elink_params*,struct elink_vars*,struct elink_phy*) ;
 int elink_get_warpcore_lane (struct elink_phy*,struct elink_params*) ;
 int elink_kr2_recovery (struct elink_params*,struct elink_vars*,struct elink_phy*) ;
 int elink_set_aer_mmd (struct elink_params*,struct elink_phy*) ;
 int elink_warpcore_get_sigdet (struct elink_phy*,struct elink_params*) ;
 int elink_warpcore_restart_AN_KR (struct elink_phy*,struct elink_params*) ;

__attribute__((used)) static void elink_check_kr2_wa(struct elink_params *params,
          struct elink_vars *vars,
          struct elink_phy *phy)
{
 struct bxe_softc *sc = params->sc;
 uint16_t base_page, next_page, not_kr2_device, lane;
 int sigdet;






 if (vars->check_kr2_recovery_cnt > 0) {
  vars->check_kr2_recovery_cnt--;
  return;
 }

 sigdet = elink_warpcore_get_sigdet(phy, params);
 if (!sigdet) {
  if (!(params->link_attr_sync & LINK_ATTR_SYNC_KR2_ENABLE)) {
   elink_kr2_recovery(params, vars, phy);
   ELINK_DEBUG_P0(sc, "No sigdet\n");
  }
  return;
 }

 lane = elink_get_warpcore_lane(phy, params);
 CL22_WR_OVER_CL45(sc, phy, MDIO_REG_BANK_AER_BLOCK,
     MDIO_AER_BLOCK_AER_REG, lane);
 elink_cl45_read(sc, phy, MDIO_AN_DEVAD,
   MDIO_AN_REG_LP_AUTO_NEG, &base_page);
 elink_cl45_read(sc, phy, MDIO_AN_DEVAD,
   MDIO_AN_REG_LP_AUTO_NEG2, &next_page);
 elink_set_aer_mmd(params, phy);


 if (base_page == 0) {
  if (!(params->link_attr_sync & LINK_ATTR_SYNC_KR2_ENABLE)) {
   elink_kr2_recovery(params, vars, phy);
   ELINK_DEBUG_P0(sc, "No BP\n");
  }
  return;
 }





 not_kr2_device = (((base_page & 0x8000) == 0) ||
     (((base_page & 0x8000) &&
       ((next_page & 0xe0) == 0x20))));


 if (!(params->link_attr_sync & LINK_ATTR_SYNC_KR2_ENABLE)) {
  if (!not_kr2_device) {
   ELINK_DEBUG_P2(sc, "BP=0x%x, NP=0x%x\n", base_page,
      next_page);
   elink_kr2_recovery(params, vars, phy);
  }
  return;
 }

 if (not_kr2_device) {

  ELINK_DEBUG_P2(sc, "BP=0x%x, NP=0x%x\n", base_page, next_page);
  elink_disable_kr2(params, vars, phy);

  elink_warpcore_restart_AN_KR(phy, params);
  return;
 }
}
