
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* b_valid; void* init_val; } ;
struct ecore_hwfn {TYPE_1__ rt_data; int p_dev; } ;


 int OSAL_FREE (int ,void*) ;
 void* OSAL_NULL ;

void ecore_init_free(struct ecore_hwfn *p_hwfn)
{
 OSAL_FREE(p_hwfn->p_dev, p_hwfn->rt_data.init_val);
 p_hwfn->rt_data.init_val = OSAL_NULL;
 OSAL_FREE(p_hwfn->p_dev, p_hwfn->rt_data.b_valid);
 p_hwfn->rt_data.b_valid = OSAL_NULL;
}
