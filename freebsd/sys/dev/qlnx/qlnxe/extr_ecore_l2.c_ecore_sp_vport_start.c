
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_sp_vport_start_params {int zero_placement_offset; int only_untagged; int max_buffers_per_cqe; int tpa_mode; int remove_inner_vlan; int mtu; int vport_id; } ;
struct ecore_hwfn {int p_dev; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 scalar_t__ IS_VF (int ) ;
 int ecore_sp_eth_vport_start (struct ecore_hwfn*,struct ecore_sp_vport_start_params*) ;
 int ecore_vf_pf_vport_start (struct ecore_hwfn*,int ,int ,int ,int ,int ,int ,int ) ;

enum _ecore_status_t ecore_sp_vport_start(struct ecore_hwfn *p_hwfn,
       struct ecore_sp_vport_start_params *p_params)
{
 if (IS_VF(p_hwfn->p_dev))
  return ecore_vf_pf_vport_start(p_hwfn, p_params->vport_id,
            p_params->mtu,
            p_params->remove_inner_vlan,
            p_params->tpa_mode,
            p_params->max_buffers_per_cqe,
            p_params->only_untagged,
            p_params->zero_placement_offset);

 return ecore_sp_eth_vport_start(p_hwfn, p_params);
}
