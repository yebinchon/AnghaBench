
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_hwfn {int p_ptt_pool; int p_dev; } ;


 int OSAL_FREE (int ,int ) ;
 int OSAL_NULL ;

__attribute__((used)) static void __ecore_ptt_pool_free(struct ecore_hwfn *p_hwfn)
{
 OSAL_FREE(p_hwfn->p_dev, p_hwfn->p_ptt_pool);
 p_hwfn->p_ptt_pool = OSAL_NULL;
}
