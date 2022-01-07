
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecore_hwfn {TYPE_1__* p_dev; } ;
typedef enum ecore_hw_err_type { ____Placeholder_ecore_hw_err_type } ecore_hw_err_type ;
struct TYPE_2__ {scalar_t__ recov_in_prog; } ;


 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int) ;
 int ECORE_HW_ERR_FAN_FAIL ;
 int ECORE_MSG_DRV ;
 int OSAL_HW_ERROR_OCCURRED (struct ecore_hwfn*,int) ;

void ecore_hw_err_notify(struct ecore_hwfn *p_hwfn,
    enum ecore_hw_err_type err_type)
{

 if (p_hwfn->p_dev->recov_in_prog && err_type != ECORE_HW_ERR_FAN_FAIL) {
  DP_VERBOSE(p_hwfn, ECORE_MSG_DRV,
      "Recovery is in progress. Avoid notifying about HW error %d.\n",
      err_type);
  return;
 }

 OSAL_HW_ERROR_OCCURRED(p_hwfn, err_type);
}
