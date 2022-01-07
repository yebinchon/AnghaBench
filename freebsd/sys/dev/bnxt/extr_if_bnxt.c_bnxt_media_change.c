
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifmediareq {int dummy; } ;
struct ifmedia {int ifm_media; } ;
struct TYPE_2__ {int autoneg; int req_link_speed; } ;
struct bnxt_softc {int ctx; TYPE_1__ link_info; int dev; } ;
typedef int if_ctx_t ;


 int BNXT_AUTONEG_SPEED ;
 int EINVAL ;
 int HWRM_PORT_PHY_CFG_INPUT_FORCE_LINK_SPEED_100GB ;
 int HWRM_PORT_PHY_CFG_INPUT_FORCE_LINK_SPEED_100MB ;
 int HWRM_PORT_PHY_CFG_INPUT_FORCE_LINK_SPEED_10GB ;
 int HWRM_PORT_PHY_CFG_INPUT_FORCE_LINK_SPEED_1GB ;
 int HWRM_PORT_PHY_CFG_INPUT_FORCE_LINK_SPEED_20GB ;
 int HWRM_PORT_PHY_CFG_INPUT_FORCE_LINK_SPEED_25GB ;
 int HWRM_PORT_PHY_CFG_INPUT_FORCE_LINK_SPEED_2_5GB ;
 int HWRM_PORT_PHY_CFG_INPUT_FORCE_LINK_SPEED_40GB ;
 int HWRM_PORT_PHY_CFG_INPUT_FORCE_LINK_SPEED_50GB ;
 scalar_t__ IFM_ETHER ;
 int IFM_SUBTYPE (int ) ;
 scalar_t__ IFM_TYPE (int ) ;
 int bnxt_hwrm_set_link_setting (struct bnxt_softc*,int,int,int) ;
 int bnxt_media_status (int ,struct ifmediareq*) ;
 int device_printf (int ,char*) ;
 struct ifmedia* iflib_get_media (int ) ;
 struct bnxt_softc* iflib_get_softc (int ) ;

__attribute__((used)) static int
bnxt_media_change(if_ctx_t ctx)
{
 struct bnxt_softc *softc = iflib_get_softc(ctx);
 struct ifmedia *ifm = iflib_get_media(ctx);
 struct ifmediareq ifmr;
 int rc;

 if (IFM_TYPE(ifm->ifm_media) != IFM_ETHER)
  return EINVAL;

 switch (IFM_SUBTYPE(ifm->ifm_media)) {
 case 146:
  softc->link_info.autoneg &= ~BNXT_AUTONEG_SPEED;
  softc->link_info.req_link_speed =
      HWRM_PORT_PHY_CFG_INPUT_FORCE_LINK_SPEED_100MB;
  break;
 case 153:
 case 151:
 case 152:
  softc->link_info.autoneg &= ~BNXT_AUTONEG_SPEED;
  softc->link_info.req_link_speed =
      HWRM_PORT_PHY_CFG_INPUT_FORCE_LINK_SPEED_1GB;
  break;
 case 139:
 case 138:
  softc->link_info.autoneg &= ~BNXT_AUTONEG_SPEED;
  softc->link_info.req_link_speed =
      HWRM_PORT_PHY_CFG_INPUT_FORCE_LINK_SPEED_2_5GB;
  break;
 case 145:
 case 144:
 case 143:
 case 142:
 case 141:
  softc->link_info.autoneg &= ~BNXT_AUTONEG_SPEED;
  softc->link_info.req_link_speed =
      HWRM_PORT_PHY_CFG_INPUT_FORCE_LINK_SPEED_10GB;
  break;
 case 140:
  softc->link_info.autoneg &= ~BNXT_AUTONEG_SPEED;
  softc->link_info.req_link_speed =
      HWRM_PORT_PHY_CFG_INPUT_FORCE_LINK_SPEED_20GB;
  break;
 case 137:
 case 136:
 case 135:
  softc->link_info.autoneg &= ~BNXT_AUTONEG_SPEED;
  softc->link_info.req_link_speed =
      HWRM_PORT_PHY_CFG_INPUT_FORCE_LINK_SPEED_25GB;
  break;
 case 134:
 case 133:
 case 132:
 case 131:
  softc->link_info.autoneg &= ~BNXT_AUTONEG_SPEED;
  softc->link_info.req_link_speed =
      HWRM_PORT_PHY_CFG_INPUT_FORCE_LINK_SPEED_40GB;
  break;
 case 130:
 case 129:
  softc->link_info.autoneg &= ~BNXT_AUTONEG_SPEED;
  softc->link_info.req_link_speed =
      HWRM_PORT_PHY_CFG_INPUT_FORCE_LINK_SPEED_50GB;
  break;
 case 150:
 case 149:
 case 148:
 case 147:
  softc->link_info.autoneg &= ~BNXT_AUTONEG_SPEED;
  softc->link_info.req_link_speed =
   HWRM_PORT_PHY_CFG_INPUT_FORCE_LINK_SPEED_100GB;
  break;
 default:
  device_printf(softc->dev,
      "Unsupported media type!  Using auto\n");

 case 128:

  softc->link_info.autoneg |= BNXT_AUTONEG_SPEED;
  break;
 }
 rc = bnxt_hwrm_set_link_setting(softc, 1, 1, 1);
 bnxt_media_status(softc->ctx, &ifmr);
 return rc;
}
