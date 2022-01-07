
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {struct ecore_bulletin_content* p_virt; } ;
struct ecore_vf_info {TYPE_1__ bulletin; } ;
struct ecore_mcp_link_state {int sfp_tx_fault; int partner_adv_pause; int partner_rx_flow_ctrl_en; int partner_tx_flow_ctrl_en; int partner_adv_speed; int pfc_enabled; int parallel_detection; int an_complete; int an; int full_duplex; int speed; int link_up; } ;
struct TYPE_6__ {int forced_tx; int forced_rx; int autoneg; } ;
struct TYPE_5__ {int forced_speed; int advertised_speeds; int autoneg; } ;
struct ecore_mcp_link_params {int loopback_mode; TYPE_3__ pause; TYPE_2__ speed; } ;
struct ecore_mcp_link_capabilities {int speed_capabilities; } ;
struct ecore_hwfn {int dummy; } ;
struct ecore_bulletin_content {int capability_speed; int sfp_tx_fault; int partner_adv_pause; int partner_rx_flow_ctrl_en; int partner_tx_flow_ctrl_en; int partner_adv_speed; int pfc_enabled; int parallel_detection; int autoneg_complete; int autoneg; int full_duplex; int speed; int link_up; int req_loopback; int req_forced_tx; int req_forced_rx; int req_autoneg_pause; int req_forced_speed; int req_adv_speed; int req_autoneg; } ;


 struct ecore_vf_info* ecore_iov_get_vf_info (struct ecore_hwfn*,int ,int) ;

void ecore_iov_set_link(struct ecore_hwfn *p_hwfn,
   u16 vfid,
   struct ecore_mcp_link_params *params,
   struct ecore_mcp_link_state *link,
   struct ecore_mcp_link_capabilities *p_caps)
{
 struct ecore_vf_info *p_vf = ecore_iov_get_vf_info(p_hwfn, vfid, 0);
 struct ecore_bulletin_content *p_bulletin;

 if (!p_vf)
  return;

 p_bulletin = p_vf->bulletin.p_virt;
 p_bulletin->req_autoneg = params->speed.autoneg;
 p_bulletin->req_adv_speed = params->speed.advertised_speeds;
 p_bulletin->req_forced_speed = params->speed.forced_speed;
 p_bulletin->req_autoneg_pause = params->pause.autoneg;
 p_bulletin->req_forced_rx = params->pause.forced_rx;
 p_bulletin->req_forced_tx = params->pause.forced_tx;
 p_bulletin->req_loopback = params->loopback_mode;

 p_bulletin->link_up = link->link_up;
 p_bulletin->speed = link->speed;
 p_bulletin->full_duplex = link->full_duplex;
 p_bulletin->autoneg = link->an;
 p_bulletin->autoneg_complete = link->an_complete;
 p_bulletin->parallel_detection = link->parallel_detection;
 p_bulletin->pfc_enabled = link->pfc_enabled;
 p_bulletin->partner_adv_speed = link->partner_adv_speed;
 p_bulletin->partner_tx_flow_ctrl_en = link->partner_tx_flow_ctrl_en;
 p_bulletin->partner_rx_flow_ctrl_en = link->partner_rx_flow_ctrl_en;
 p_bulletin->partner_adv_pause = link->partner_adv_pause;
 p_bulletin->sfp_tx_fault = link->sfp_tx_fault;

 p_bulletin->capability_speed = p_caps->speed_capabilities;
}
