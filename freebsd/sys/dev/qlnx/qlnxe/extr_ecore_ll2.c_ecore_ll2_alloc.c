
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int lock; } ;
struct TYPE_3__ {int lock; } ;
struct ecore_ll2_info {int my_id; TYPE_2__ tx_queue; TYPE_1__ rx_queue; int mutex; } ;
struct ecore_hwfn {struct ecore_ll2_info* p_ll2_info; int p_dev; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int ECORE_MAX_NUM_OF_LL2_CONNECTIONS ;
 int ECORE_NOMEM ;
 int ECORE_SUCCESS ;
 int GFP_KERNEL ;
 scalar_t__ OSAL_MUTEX_ALLOC (struct ecore_hwfn*,int *) ;
 scalar_t__ OSAL_SPIN_LOCK_ALLOC (struct ecore_hwfn*,int *) ;
 struct ecore_ll2_info* OSAL_ZALLOC (int ,int ,int) ;
 int ecore_ll2_free (struct ecore_hwfn*) ;

enum _ecore_status_t ecore_ll2_alloc(struct ecore_hwfn *p_hwfn)
{
 struct ecore_ll2_info *p_ll2_info;
 u8 i;


 p_ll2_info = OSAL_ZALLOC(p_hwfn->p_dev, GFP_KERNEL,
     sizeof(struct ecore_ll2_info) *
     ECORE_MAX_NUM_OF_LL2_CONNECTIONS);
 if (!p_ll2_info) {
  DP_NOTICE(p_hwfn, 0,
     "Failed to allocate `struct ecore_ll2'\n");
  return ECORE_NOMEM;
 }

 p_hwfn->p_ll2_info = p_ll2_info;

 for (i = 0; i < ECORE_MAX_NUM_OF_LL2_CONNECTIONS; i++) {
  p_ll2_info[i].my_id = i;
 }

 return ECORE_SUCCESS;





}
