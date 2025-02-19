
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct ecore_hwfn {int p_dev; struct ecore_cxt_mngr* p_cxt_mngr; } ;
struct ecore_cxt_mngr {TYPE_2__** acquired_vf; TYPE_1__* acquired; } ;
struct TYPE_4__ {scalar_t__ start_cid; scalar_t__ max_count; void* cid_map; } ;
struct TYPE_3__ {scalar_t__ start_cid; scalar_t__ max_count; void* cid_map; } ;


 size_t COMMON_MAX_NUM_VFS ;
 size_t MAX_CONN_TYPES ;
 int OSAL_FREE (int ,void*) ;
 void* OSAL_NULL ;

__attribute__((used)) static void ecore_cid_map_free(struct ecore_hwfn *p_hwfn)
{
 struct ecore_cxt_mngr *p_mngr = p_hwfn->p_cxt_mngr;
 u32 type, vf;

 for (type = 0; type < MAX_CONN_TYPES; type++) {
  OSAL_FREE(p_hwfn->p_dev, p_mngr->acquired[type].cid_map);
  p_mngr->acquired[type].cid_map = OSAL_NULL;
  p_mngr->acquired[type].max_count = 0;
  p_mngr->acquired[type].start_cid = 0;

  for (vf = 0; vf < COMMON_MAX_NUM_VFS; vf++) {
   OSAL_FREE(p_hwfn->p_dev,
      p_mngr->acquired_vf[type][vf].cid_map);
   p_mngr->acquired_vf[type][vf].cid_map = OSAL_NULL;
   p_mngr->acquired_vf[type][vf].max_count = 0;
   p_mngr->acquired_vf[type][vf].start_cid = 0;
  }
 }
}
