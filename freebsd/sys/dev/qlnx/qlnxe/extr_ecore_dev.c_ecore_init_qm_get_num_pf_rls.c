
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct ecore_hwfn {int dummy; } ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*,scalar_t__,scalar_t__) ;
 int ECORE_RL ;
 int ECORE_VPORT ;
 scalar_t__ IS_ECORE_DCQCN (struct ecore_hwfn*) ;
 scalar_t__ NUM_DEFAULT_RLS ;
 scalar_t__ OSAL_MIN_T (int ,int ,scalar_t__) ;
 int RESC_NUM (struct ecore_hwfn*,int ) ;
 scalar_t__ ROCE_DCQCN_RP_MAX_QPS ;
 scalar_t__ ecore_init_qm_get_num_vfs (struct ecore_hwfn*) ;
 int u32 ;

u16 ecore_init_qm_get_num_pf_rls(struct ecore_hwfn *p_hwfn)
{
 u16 num_pf_rls, num_vfs = ecore_init_qm_get_num_vfs(p_hwfn);


 num_pf_rls = (u16)OSAL_MIN_T(u32, RESC_NUM(p_hwfn, ECORE_RL),
         (u16)OSAL_MIN_T(u32, RESC_NUM(p_hwfn, ECORE_VPORT),
           ROCE_DCQCN_RP_MAX_QPS));


 if (num_pf_rls < num_vfs + NUM_DEFAULT_RLS) {
  if (IS_ECORE_DCQCN(p_hwfn))
   DP_NOTICE(p_hwfn, 0, "no rate limiters left for PF rate limiting [num_pf_rls %d num_vfs %d]\n", num_pf_rls, num_vfs);
  return 0;
 }


 num_pf_rls -= num_vfs + NUM_DEFAULT_RLS;

 return num_pf_rls;
}
