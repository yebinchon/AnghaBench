
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ecore_hwfn {TYPE_1__* p_eq; int p_dev; } ;
struct TYPE_3__ {int chain; } ;


 int OSAL_FREE (int ,TYPE_1__*) ;
 TYPE_1__* OSAL_NULL ;
 int ecore_chain_free (int ,int *) ;

void ecore_eq_free(struct ecore_hwfn *p_hwfn)
{
 if (!p_hwfn->p_eq)
  return;

 ecore_chain_free(p_hwfn->p_dev, &p_hwfn->p_eq->chain);

 OSAL_FREE(p_hwfn->p_dev, p_hwfn->p_eq);
 p_hwfn->p_eq = OSAL_NULL;
}
