
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_hwfn {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int ECORE_HW_ERR_FW_ASSERT ;
 int ECORE_INVAL ;
 int ecore_hw_err_notify (struct ecore_hwfn*,int ) ;

__attribute__((used)) static enum _ecore_status_t ecore_fw_assertion(struct ecore_hwfn *p_hwfn)
{
 DP_NOTICE(p_hwfn, 0, "FW assertion!\n");

 ecore_hw_err_notify(p_hwfn, ECORE_HW_ERR_FW_ASSERT);

 return ECORE_INVAL;
}
