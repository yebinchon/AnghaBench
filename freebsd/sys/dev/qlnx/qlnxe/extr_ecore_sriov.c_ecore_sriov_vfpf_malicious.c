
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct malicious_vf_eqe_data {int err_id; int vf_id; } ;
struct ecore_vf_info {int b_malicious; int relative_vf_id; int abs_vf_id; } ;
struct ecore_hwfn {int dummy; } ;


 int DP_INFO (struct ecore_hwfn*,char*,int ,int ) ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*,int ,int ) ;
 int OSAL_PF_VF_MALICIOUS (struct ecore_hwfn*,int ) ;
 struct ecore_vf_info* ecore_sriov_get_vf_from_absid (struct ecore_hwfn*,int ) ;

__attribute__((used)) static void ecore_sriov_vfpf_malicious(struct ecore_hwfn *p_hwfn,
           struct malicious_vf_eqe_data *p_data)
{
 struct ecore_vf_info *p_vf;

 p_vf = ecore_sriov_get_vf_from_absid(p_hwfn, p_data->vf_id);

 if (!p_vf)
  return;

 if (!p_vf->b_malicious) {
  DP_NOTICE(p_hwfn, 0,
     "VF [%d] - Malicious behavior [%02x]\n",
     p_vf->abs_vf_id, p_data->err_id);

  p_vf->b_malicious = 1;
 } else {
  DP_INFO(p_hwfn,
   "VF [%d] - Malicious behavior [%02x]\n",
   p_vf->abs_vf_id, p_data->err_id);
 }

 OSAL_PF_VF_MALICIOUS(p_hwfn, p_vf->relative_vf_id);
}
