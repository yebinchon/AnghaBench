
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct elink_vars {int link_status; void* flow_ctrl; } ;
struct elink_phy {int dummy; } ;
struct elink_params {void* req_fc_auto_adv; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 void* ELINK_FLOW_CTRL_BOTH ;
 void* ELINK_FLOW_CTRL_NONE ;
 void* ELINK_FLOW_CTRL_RX ;
 void* ELINK_FLOW_CTRL_TX ;
 int LINK_STATUS_LINK_PARTNER_ASYMMETRIC_PAUSE ;
 int LINK_STATUS_LINK_PARTNER_SYMMETRIC_PAUSE ;

__attribute__((used)) static void elink_pause_resolve(struct elink_phy *phy,
    struct elink_params *params,
    struct elink_vars *vars,
    uint32_t pause_result)
{
 struct bxe_softc *sc = params->sc;

 switch (pause_result) {
 case 0xb:
  ELINK_DEBUG_P0(sc, "Flow Control: TX only\n");
  vars->flow_ctrl = ELINK_FLOW_CTRL_TX;
  break;

 case 0xe:
  ELINK_DEBUG_P0(sc, "Flow Control: RX only\n");
  vars->flow_ctrl = ELINK_FLOW_CTRL_RX;
  break;

 case 0x5:
 case 0x7:
 case 0xd:
 case 0xf:





  if (params->req_fc_auto_adv == ELINK_FLOW_CTRL_BOTH) {
   ELINK_DEBUG_P0(sc, "Flow Control: RX & TX\n");
  vars->flow_ctrl = ELINK_FLOW_CTRL_BOTH;
  } else {
   ELINK_DEBUG_P0(sc, "Flow Control: RX only\n");
   vars->flow_ctrl = ELINK_FLOW_CTRL_RX;
  }
  break;
 default:
  ELINK_DEBUG_P0(sc, "Flow Control: None\n");
  vars->flow_ctrl = ELINK_FLOW_CTRL_NONE;
  break;
 }
 if (pause_result & (1<<0))
  vars->link_status |= LINK_STATUS_LINK_PARTNER_SYMMETRIC_PAUSE;
 if (pause_result & (1<<1))
  vars->link_status |= LINK_STATUS_LINK_PARTNER_ASYMMETRIC_PAUSE;

}
