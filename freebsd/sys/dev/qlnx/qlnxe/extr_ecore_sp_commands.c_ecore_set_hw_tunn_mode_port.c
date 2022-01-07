
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int port; scalar_t__ b_update_port; } ;
struct TYPE_3__ {int port; scalar_t__ b_update_port; } ;
struct ecore_tunnel_info {TYPE_2__ geneve_port; TYPE_1__ vxlan_port; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int p_dev; } ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 scalar_t__ ECORE_IS_BB_A0 (int ) ;
 int ecore_set_geneve_dest_port (struct ecore_hwfn*,struct ecore_ptt*,int ) ;
 int ecore_set_hw_tunn_mode (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_tunnel_info*) ;
 int ecore_set_vxlan_dest_port (struct ecore_hwfn*,struct ecore_ptt*,int ) ;

__attribute__((used)) static void ecore_set_hw_tunn_mode_port(struct ecore_hwfn *p_hwfn,
     struct ecore_ptt *p_ptt,
     struct ecore_tunnel_info *p_tunn)
{
 if (ECORE_IS_BB_A0(p_hwfn->p_dev)) {
  DP_NOTICE(p_hwfn, 1,
     "A0 chip: tunnel hw config is not supported\n");
  return;
 }

 if (p_tunn->vxlan_port.b_update_port)
  ecore_set_vxlan_dest_port(p_hwfn, p_ptt,
       p_tunn->vxlan_port.port);

 if (p_tunn->geneve_port.b_update_port)
  ecore_set_geneve_dest_port(p_hwfn, p_ptt,
        p_tunn->geneve_port.port);

 ecore_set_hw_tunn_mode(p_hwfn, p_ptt, p_tunn);
}
