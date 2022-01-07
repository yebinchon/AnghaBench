
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ecore_hwfn {TYPE_1__* p_cxt_mngr; int p_dev; } ;
struct TYPE_3__ {int mutex; } ;


 int OSAL_FREE (int ,TYPE_1__*) ;
 int OSAL_MUTEX_DEALLOC (int *) ;
 TYPE_1__* OSAL_NULL ;
 int ecore_cid_map_free (struct ecore_hwfn*) ;
 int ecore_cxt_src_t2_free (struct ecore_hwfn*) ;
 int ecore_ilt_shadow_free (struct ecore_hwfn*) ;

void ecore_cxt_mngr_free(struct ecore_hwfn *p_hwfn)
{
 if (!p_hwfn->p_cxt_mngr)
  return;

 ecore_cid_map_free(p_hwfn);
 ecore_cxt_src_t2_free(p_hwfn);
 ecore_ilt_shadow_free(p_hwfn);



 OSAL_FREE(p_hwfn->p_dev, p_hwfn->p_cxt_mngr);

 p_hwfn->p_cxt_mngr = OSAL_NULL;
}
