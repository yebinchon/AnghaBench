
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tx; int rx; int autoneg; } ;
struct TYPE_3__ {int tx; int rx; int autoneg; } ;
struct bnxt_link_info {scalar_t__ link_up; scalar_t__ last_link_up; int link_speed; TYPE_2__ flow_ctrl; TYPE_1__ last_flow_ctrl; int duplex; int last_duplex; } ;
struct bnxt_softc {int media; int dev; struct bnxt_link_info link_info; int ctx; } ;


 int BNXT_IS_FLOW_CTRL_CHANGED (struct bnxt_link_info*) ;
 int HWRM_PORT_PHY_QCFG_OUTPUT_DUPLEX_CFG_FULL ;
 int IFM_AUTO ;
 int IFM_ETHER ;
 int IF_Gbps (int) ;
 int LINK_STATE_DOWN ;
 int LINK_STATE_UP ;
 int bnxt_add_media_types (struct bnxt_softc*) ;
 int bnxt_get_baudrate (struct bnxt_link_info*) ;
 int device_printf (int ,char*,...) ;
 int iflib_link_state_change (int ,int ,int ) ;
 int ifmedia_removeall (int ) ;
 int ifmedia_set (int ,int) ;

void
bnxt_report_link(struct bnxt_softc *softc)
{
 struct bnxt_link_info *link_info = &softc->link_info;
 const char *duplex = ((void*)0), *flow_ctrl = ((void*)0);

 if (link_info->link_up == link_info->last_link_up) {
  if (!link_info->link_up)
   return;
  if ((link_info->duplex == link_info->last_duplex) &&
                    (!(BNXT_IS_FLOW_CTRL_CHANGED(link_info))))
   return;
 }

 if (link_info->link_up) {
  if (link_info->duplex ==
      HWRM_PORT_PHY_QCFG_OUTPUT_DUPLEX_CFG_FULL)
   duplex = "full duplex";
  else
   duplex = "half duplex";
  if (link_info->flow_ctrl.tx & link_info->flow_ctrl.rx)
   flow_ctrl = "FC - receive & transmit";
  else if (link_info->flow_ctrl.tx)
   flow_ctrl = "FC - transmit";
  else if (link_info->flow_ctrl.rx)
   flow_ctrl = "FC - receive";
  else
   flow_ctrl = "FC - none";
  iflib_link_state_change(softc->ctx, LINK_STATE_UP,
      IF_Gbps(100));
  device_printf(softc->dev, "Link is UP %s, %s - %d Mbps \n", duplex,
      flow_ctrl, (link_info->link_speed * 100));
 } else {
  iflib_link_state_change(softc->ctx, LINK_STATE_DOWN,
      bnxt_get_baudrate(&softc->link_info));
  device_printf(softc->dev, "Link is Down\n");
 }

 link_info->last_link_up = link_info->link_up;
 link_info->last_duplex = link_info->duplex;
 link_info->last_flow_ctrl.tx = link_info->flow_ctrl.tx;
 link_info->last_flow_ctrl.rx = link_info->flow_ctrl.rx;
 link_info->last_flow_ctrl.autoneg = link_info->flow_ctrl.autoneg;

 ifmedia_removeall(softc->media);
 bnxt_add_media_types(softc);
 ifmedia_set(softc->media, IFM_ETHER | IFM_AUTO);
}
