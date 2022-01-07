
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_hwfn {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_ERR (struct ecore_hwfn*,char*) ;
 int ECORE_INVAL ;
 int ECORE_PQ ;
 int ECORE_SUCCESS ;
 int ECORE_VPORT ;
 scalar_t__ RESC_NUM (struct ecore_hwfn*,int ) ;
 scalar_t__ ecore_init_qm_get_num_pqs (struct ecore_hwfn*) ;
 scalar_t__ ecore_init_qm_get_num_vports (struct ecore_hwfn*) ;

__attribute__((used)) static enum _ecore_status_t ecore_init_qm_sanity(struct ecore_hwfn *p_hwfn)
{
 if (ecore_init_qm_get_num_vports(p_hwfn) > RESC_NUM(p_hwfn, ECORE_VPORT)) {
  DP_ERR(p_hwfn, "requested amount of vports exceeds resource\n");
  return ECORE_INVAL;
 }

 if (ecore_init_qm_get_num_pqs(p_hwfn) > RESC_NUM(p_hwfn, ECORE_PQ)) {
  DP_ERR(p_hwfn, "requested amount of pqs exceeds resource\n");
  return ECORE_INVAL;
 }

 return ECORE_SUCCESS;
}
