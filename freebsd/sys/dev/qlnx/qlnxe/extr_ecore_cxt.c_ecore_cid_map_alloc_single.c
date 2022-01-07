
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct ecore_hwfn {int p_dev; } ;
struct ecore_cid_acquired_map {void* max_count; void* start_cid; int cid_map; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int BITS_PER_MAP_WORD ;
 int DIV_ROUND_UP (void*,int ) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,void*,void*,void*) ;
 int ECORE_MSG_CXT ;
 int ECORE_NOMEM ;
 int ECORE_SUCCESS ;
 int GFP_KERNEL ;
 int MAP_WORD_SIZE ;
 int OSAL_NULL ;
 int OSAL_ZALLOC (int ,int ,void*) ;

__attribute__((used)) static enum _ecore_status_t
ecore_cid_map_alloc_single(struct ecore_hwfn *p_hwfn, u32 type,
      u32 cid_start, u32 cid_count,
      struct ecore_cid_acquired_map *p_map)
{
 u32 size;

 if (!cid_count)
  return ECORE_SUCCESS;

 size = MAP_WORD_SIZE * DIV_ROUND_UP(cid_count, BITS_PER_MAP_WORD);
 p_map->cid_map = OSAL_ZALLOC(p_hwfn->p_dev, GFP_KERNEL, size);
 if (p_map->cid_map == OSAL_NULL)
  return ECORE_NOMEM;

 p_map->max_count = cid_count;
 p_map->start_cid = cid_start;

 DP_VERBOSE(p_hwfn, ECORE_MSG_CXT,
     "Type %08x start: %08x count %08x\n",
     type, p_map->start_cid, p_map->max_count);

 return ECORE_SUCCESS;
}
