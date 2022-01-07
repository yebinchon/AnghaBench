
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eth_slow_path_rx_cqe {int echo; } ;
struct ecore_hwfn {int p_dev; } ;
typedef enum protocol_type { ____Placeholder_protocol_type } protocol_type ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 scalar_t__ IS_VF (int ) ;
 int OSAL_NULL ;
 int OSAL_VF_CQE_COMPLETION (struct ecore_hwfn*,struct eth_slow_path_rx_cqe*,int) ;
 int ecore_spq_completion (struct ecore_hwfn*,int ,int ,int ) ;

__attribute__((used)) static enum _ecore_status_t ecore_cqe_completion(struct ecore_hwfn *p_hwfn,
       struct eth_slow_path_rx_cqe *cqe,
       enum protocol_type protocol)
{
 if (IS_VF(p_hwfn->p_dev))
  return OSAL_VF_CQE_COMPLETION(p_hwfn, cqe, protocol);





 return ecore_spq_completion(p_hwfn, cqe->echo, 0, OSAL_NULL);
}
