
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_hwfn {int sp_dpc; int p_dev; } ;


 int OSAL_FREE (int ,int ) ;
 int OSAL_NULL ;

__attribute__((used)) static void ecore_int_sp_dpc_free(struct ecore_hwfn *p_hwfn)
{
 OSAL_FREE(p_hwfn->p_dev, p_hwfn->sp_dpc);
 p_hwfn->sp_dpc = OSAL_NULL;
}
