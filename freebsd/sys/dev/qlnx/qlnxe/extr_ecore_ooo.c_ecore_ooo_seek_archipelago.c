
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ecore_ooo_info {int cid_base; int max_num_archipelagos; struct ecore_ooo_archipelago* p_archipelagos_mem; } ;
struct ecore_ooo_archipelago {int isles_list; } ;


 scalar_t__ OSAL_LIST_IS_EMPTY (int *) ;
 struct ecore_ooo_archipelago* OSAL_NULL ;

__attribute__((used)) static struct ecore_ooo_archipelago *
ecore_ooo_seek_archipelago(struct ecore_ooo_info *p_ooo_info, u32 cid)
{
 u32 idx = (cid & 0xffff) - p_ooo_info->cid_base;
 struct ecore_ooo_archipelago *p_archipelago;

 if (idx >= p_ooo_info->max_num_archipelagos)
  return OSAL_NULL;

 p_archipelago = &p_ooo_info->p_archipelagos_mem[idx];

 if (OSAL_LIST_IS_EMPTY(&p_archipelago->isles_list))
  return OSAL_NULL;

 return p_archipelago;
}
