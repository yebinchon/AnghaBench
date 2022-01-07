
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct ecore_sb_sp_info {TYPE_1__* pi_info_arr; } ;
struct ecore_hwfn {struct ecore_sb_sp_info* p_sp_sb; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_2__ {scalar_t__ comp_cb; scalar_t__ cookie; } ;


 int ECORE_NOMEM ;
 int ECORE_SUCCESS ;
 scalar_t__ OSAL_NULL ;

enum _ecore_status_t ecore_int_unregister_cb(struct ecore_hwfn *p_hwfn,
          u8 pi)
{
 struct ecore_sb_sp_info *p_sp_sb = p_hwfn->p_sp_sb;

 if (p_sp_sb->pi_info_arr[pi].comp_cb == OSAL_NULL)
  return ECORE_NOMEM;

 p_sp_sb->pi_info_arr[pi].comp_cb = OSAL_NULL;
 p_sp_sb->pi_info_arr[pi].cookie = OSAL_NULL;

 return ECORE_SUCCESS;
}
