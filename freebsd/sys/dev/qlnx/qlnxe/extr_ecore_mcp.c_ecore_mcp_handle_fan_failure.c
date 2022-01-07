
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_hwfn {int p_dev; } ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int ECORE_HW_ERR_FAN_FAIL ;
 struct ecore_hwfn* ECORE_LEADING_HWFN (int ) ;
 int ecore_hw_err_notify (struct ecore_hwfn*,int ) ;

__attribute__((used)) static void ecore_mcp_handle_fan_failure(struct ecore_hwfn *p_hwfn)
{

 if (p_hwfn != ECORE_LEADING_HWFN(p_hwfn->p_dev))
  return;

 DP_NOTICE(p_hwfn, 0,
    "Fan failure was detected on the network interface card and it's going to be shut down.\n");

 ecore_hw_err_notify(p_hwfn, ECORE_HW_ERR_FAN_FAIL);
}
