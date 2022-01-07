
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_hwfn {int p_dcbx_info; int p_dev; } ;


 int OSAL_FREE (int ,int ) ;
 int OSAL_NULL ;

void ecore_dcbx_info_free(struct ecore_hwfn *p_hwfn)
{
 OSAL_FREE(p_hwfn->p_dev, p_hwfn->p_dcbx_info);
 p_hwfn->p_dcbx_info = OSAL_NULL;
}
