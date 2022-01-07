
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int p_igu_info; } ;
struct ecore_hwfn {TYPE_1__ hw_info; int p_dev; } ;


 int OSAL_FREE (int ,int ) ;
 int OSAL_NULL ;
 int ecore_ptt_pool_free (struct ecore_hwfn*) ;

__attribute__((used)) static void ecore_hw_hwfn_free(struct ecore_hwfn *p_hwfn)
{
 ecore_ptt_pool_free(p_hwfn);
 OSAL_FREE(p_hwfn->p_dev, p_hwfn->hw_info.p_igu_info);
 p_hwfn->hw_info.p_igu_info = OSAL_NULL;
}
