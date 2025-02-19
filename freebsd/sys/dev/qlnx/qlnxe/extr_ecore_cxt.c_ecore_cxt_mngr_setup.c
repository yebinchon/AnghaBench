
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct ecore_hwfn {struct ecore_cxt_mngr* p_cxt_mngr; } ;
struct ecore_cxt_mngr {struct ecore_cid_acquired_map** acquired_vf; struct ecore_cid_acquired_map* acquired; struct ecore_conn_type_cfg* conn_cfg; } ;
struct ecore_conn_type_cfg {int cids_per_vf; scalar_t__ cid_count; } ;
struct ecore_cid_acquired_map {int cid_map; int max_count; } ;


 int BITS_PER_MAP_WORD ;
 size_t COMMON_MAX_NUM_VFS ;
 size_t DIV_ROUND_UP (int ,int ) ;
 size_t MAP_WORD_SIZE ;
 int MAX_CONN_TYPES ;
 int OSAL_MEM_ZERO (int ,size_t) ;

void ecore_cxt_mngr_setup(struct ecore_hwfn *p_hwfn)
{
 struct ecore_cxt_mngr *p_mngr = p_hwfn->p_cxt_mngr;
 struct ecore_cid_acquired_map *p_map;
 struct ecore_conn_type_cfg *p_cfg;
 int type;
 u32 len;


 for (type = 0; type < MAX_CONN_TYPES; type++) {
  u32 vf;

  p_cfg = &p_mngr->conn_cfg[type];
  if (p_cfg->cid_count) {
   p_map = &p_mngr->acquired[type];
   len = DIV_ROUND_UP(p_map->max_count,
        BITS_PER_MAP_WORD) *
         MAP_WORD_SIZE;
   OSAL_MEM_ZERO(p_map->cid_map, len);
  }

  if (!p_cfg->cids_per_vf)
   continue;

  for (vf = 0; vf < COMMON_MAX_NUM_VFS; vf++) {
   p_map = &p_mngr->acquired_vf[type][vf];
   len = DIV_ROUND_UP(p_map->max_count,
        BITS_PER_MAP_WORD) *
         MAP_WORD_SIZE;
   OSAL_MEM_ZERO(p_map->cid_map, len);
  }
 }
}
