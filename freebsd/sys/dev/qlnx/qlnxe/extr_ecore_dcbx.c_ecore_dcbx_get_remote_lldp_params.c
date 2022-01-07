
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lldp_status_params_s {int peer_port_id; int peer_chassis_id; } ;
struct ecore_hwfn {TYPE_1__* p_dcbx_info; } ;
struct TYPE_4__ {int peer_port_id; int peer_chassis_id; } ;
struct ecore_dcbx_get {TYPE_2__ lldp_remote; } ;
struct TYPE_3__ {struct lldp_status_params_s* lldp_remote; } ;


 size_t LLDP_NEAREST_BRIDGE ;
 int OSAL_MEMCPY (int ,int ,int) ;

__attribute__((used)) static void ecore_dcbx_get_remote_lldp_params(struct ecore_hwfn *p_hwfn,
           struct ecore_dcbx_get *params)
{
 struct lldp_status_params_s *p_remote;

 p_remote = &p_hwfn->p_dcbx_info->lldp_remote[LLDP_NEAREST_BRIDGE];

 OSAL_MEMCPY(params->lldp_remote.peer_chassis_id,
      p_remote->peer_chassis_id,
      sizeof(params->lldp_remote.peer_chassis_id));
 OSAL_MEMCPY(params->lldp_remote.peer_port_id, p_remote->peer_port_id,
      sizeof(params->lldp_remote.peer_port_id));
}
