
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct elink_vars {int phy_flags; scalar_t__ line_speed; int ieee_fc; } ;
struct elink_phy {int dummy; } ;
struct elink_params {scalar_t__ loopback_mode; int feature_config_flags; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 int ELINK_FEATURE_CONFIG_OVERRIDE_PREEMPHASIS_ENABLED ;
 scalar_t__ ELINK_LOOPBACK_EXT ;
 scalar_t__ ELINK_LOOPBACK_XGXS ;
 scalar_t__ ELINK_SINGLE_MEDIA_DIRECT (struct elink_params*) ;
 scalar_t__ ELINK_SPEED_AUTO_NEG ;
 int PHY_SGMII_FLAG ;
 int elink_initialize_sgmii_process (struct elink_phy*,struct elink_params*,struct elink_vars*) ;
 int elink_program_serdes (struct elink_phy*,struct elink_params*,struct elink_vars*) ;
 int elink_restart_autoneg (struct elink_phy*,struct elink_params*,int) ;
 int elink_set_autoneg (struct elink_phy*,struct elink_params*,struct elink_vars*,int) ;
 int elink_set_brcm_cl37_advertisement (struct elink_phy*,struct elink_params*) ;
 int elink_set_ieee_aneg_advertisement (struct elink_phy*,struct elink_params*,int ) ;
 int elink_set_preemphasis (struct elink_phy*,struct elink_params*) ;

__attribute__((used)) static void elink_xgxs_config_init(struct elink_phy *phy,
       struct elink_params *params,
       struct elink_vars *vars)
{
 struct bxe_softc *sc = params->sc;
 uint8_t enable_cl73 = (ELINK_SINGLE_MEDIA_DIRECT(params) ||
     (params->loopback_mode == ELINK_LOOPBACK_XGXS));
 if (!(vars->phy_flags & PHY_SGMII_FLAG)) {
  if (ELINK_SINGLE_MEDIA_DIRECT(params) &&
      (params->feature_config_flags &
       ELINK_FEATURE_CONFIG_OVERRIDE_PREEMPHASIS_ENABLED))
   elink_set_preemphasis(phy, params);


  if (vars->line_speed != ELINK_SPEED_AUTO_NEG ||
      (ELINK_SINGLE_MEDIA_DIRECT(params) &&
       params->loopback_mode == ELINK_LOOPBACK_EXT)) {
   ELINK_DEBUG_P0(sc, "not SGMII, no AN\n");


   elink_set_autoneg(phy, params, vars, 0);


   elink_program_serdes(phy, params, vars);

  } else {
   ELINK_DEBUG_P0(sc, "not SGMII, AN\n");


   elink_set_brcm_cl37_advertisement(phy, params);


   elink_set_ieee_aneg_advertisement(phy, params,
         vars->ieee_fc);


   elink_set_autoneg(phy, params, vars, enable_cl73);


   elink_restart_autoneg(phy, params, enable_cl73);
  }

 } else {
  ELINK_DEBUG_P0(sc, "SGMII\n");

  elink_initialize_sgmii_process(phy, params, vars);
 }
}
