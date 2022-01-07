
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int forced_tx; int forced_rx; int autoneg; } ;
struct TYPE_4__ {int forced_speed; int advertised_speeds; int autoneg; } ;
struct ecore_mcp_link_params {int loopback_mode; TYPE_1__ pause; TYPE_2__ speed; } ;
struct ecore_bulletin_content {int req_loopback; int req_forced_tx; int req_forced_rx; int req_autoneg_pause; int req_forced_speed; int req_adv_speed; int req_autoneg; } ;


 int OSAL_MEMSET (struct ecore_mcp_link_params*,int ,int) ;

void __ecore_vf_get_link_params(struct ecore_mcp_link_params *p_params,
    struct ecore_bulletin_content *p_bulletin)
{
 OSAL_MEMSET(p_params, 0, sizeof(*p_params));

 p_params->speed.autoneg = p_bulletin->req_autoneg;
 p_params->speed.advertised_speeds = p_bulletin->req_adv_speed;
 p_params->speed.forced_speed = p_bulletin->req_forced_speed;
 p_params->pause.autoneg = p_bulletin->req_autoneg_pause;
 p_params->pause.forced_rx = p_bulletin->req_forced_rx;
 p_params->pause.forced_tx = p_bulletin->req_forced_tx;
 p_params->loopback_mode = p_bulletin->req_loopback;
}
