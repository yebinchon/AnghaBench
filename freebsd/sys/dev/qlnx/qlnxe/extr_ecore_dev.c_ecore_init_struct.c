
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_2__ {int lock; } ;
struct ecore_hwfn {size_t my_id; int b_active; TYPE_1__ dmae_info; struct ecore_dev* p_dev; } ;
struct ecore_dev {int cache_shift; struct ecore_hwfn* hwfns; int ilt_page_size; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int ECORE_DEFAULT_ILT_PAGE_SIZE ;
 int ECORE_NOMEM ;
 int ECORE_SUCCESS ;
 size_t MAX_HWFNS_PER_DEVICE ;
 struct ecore_hwfn* OSAL_NULL ;
 scalar_t__ OSAL_SPIN_LOCK_ALLOC (struct ecore_hwfn*,int *) ;
 int OSAL_SPIN_LOCK_DEALLOC (int *) ;
 int OSAL_SPIN_LOCK_INIT (int *) ;

enum _ecore_status_t ecore_init_struct(struct ecore_dev *p_dev)
{
 u8 i;

 for (i = 0; i < MAX_HWFNS_PER_DEVICE; i++) {
  struct ecore_hwfn *p_hwfn = &p_dev->hwfns[i];

  p_hwfn->p_dev = p_dev;
  p_hwfn->my_id = i;
  p_hwfn->b_active = 0;





  OSAL_SPIN_LOCK_INIT(&p_hwfn->dmae_info.lock);
 }


 p_dev->hwfns[0].b_active = 1;


 p_dev->cache_shift = 7;

 p_dev->ilt_page_size = ECORE_DEFAULT_ILT_PAGE_SIZE;

 return ECORE_SUCCESS;
}
