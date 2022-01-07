
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct elink_vars {int dummy; } ;
struct elink_phy {int dummy; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;
typedef scalar_t__ elink_status_t ;


 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 scalar_t__ ELINK_STATUS_OK ;
 int PHY84833_MB_PROCESS1 ;
 int PHY848xx_CMD_SET_EEE_MODE ;
 scalar_t__ elink_848xx_cmd_hdlr (struct elink_phy*,struct elink_params*,int ,int *,int,int ) ;
 scalar_t__ elink_eee_disable (struct elink_phy*,struct elink_params*,struct elink_vars*) ;

__attribute__((used)) static elink_status_t elink_8483x_disable_eee(struct elink_phy *phy,
       struct elink_params *params,
       struct elink_vars *vars)
{
 elink_status_t rc;
 struct bxe_softc *sc = params->sc;
 uint16_t cmd_args = 0;

 ELINK_DEBUG_P0(sc, "Don't Advertise 10GBase-T EEE\n");


 rc = elink_848xx_cmd_hdlr(phy, params, PHY848xx_CMD_SET_EEE_MODE,
      &cmd_args, 1, PHY84833_MB_PROCESS1);
 if (rc != ELINK_STATUS_OK) {
  ELINK_DEBUG_P0(sc, "EEE disable failed.\n");
  return rc;
 }

 return elink_eee_disable(phy, params, vars);
}
