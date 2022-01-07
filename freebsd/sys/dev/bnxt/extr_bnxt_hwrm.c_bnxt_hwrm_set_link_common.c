
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct hwrm_port_phy_cfg_input {int flags; int force_link_speed; int enables; int auto_mode; } ;
struct TYPE_2__ {int autoneg; int req_link_speed; } ;
struct bnxt_softc {TYPE_1__ link_info; } ;


 int BNXT_AUTONEG_SPEED ;
 int HWRM_PORT_PHY_CFG_INPUT_AUTO_MODE_ALL_SPEEDS ;
 int HWRM_PORT_PHY_CFG_INPUT_ENABLES_AUTO_MODE ;
 int HWRM_PORT_PHY_CFG_INPUT_FLAGS_FORCE ;
 int HWRM_PORT_PHY_CFG_INPUT_FLAGS_RESET_PHY ;
 int HWRM_PORT_PHY_CFG_INPUT_FLAGS_RESTART_AUTONEG ;
 int htole16 (int ) ;
 int htole32 (int ) ;

__attribute__((used)) static void
bnxt_hwrm_set_link_common(struct bnxt_softc *softc,
    struct hwrm_port_phy_cfg_input *req)
{
 uint8_t autoneg = softc->link_info.autoneg;
 uint16_t fw_link_speed = softc->link_info.req_link_speed;

 if (autoneg & BNXT_AUTONEG_SPEED) {
  req->auto_mode |=
      HWRM_PORT_PHY_CFG_INPUT_AUTO_MODE_ALL_SPEEDS;

  req->enables |=
      htole32(HWRM_PORT_PHY_CFG_INPUT_ENABLES_AUTO_MODE);
  req->flags |=
      htole32(HWRM_PORT_PHY_CFG_INPUT_FLAGS_RESTART_AUTONEG);
 } else {
  req->force_link_speed = htole16(fw_link_speed);
  req->flags |= htole32(HWRM_PORT_PHY_CFG_INPUT_FLAGS_FORCE);
 }


 req->flags |= htole32(HWRM_PORT_PHY_CFG_INPUT_FLAGS_RESET_PHY);
}
