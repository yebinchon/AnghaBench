
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ecore_hwfn {TYPE_2__* p_dcbx_info; } ;
struct TYPE_3__ {scalar_t__* dscp_pri_map; scalar_t__ enabled; } ;
struct ecore_dcbx_set {TYPE_1__ dscp; } ;
struct dcb_dscp_map {int* dscp_pri_map; int flags; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_4__ {int dscp_nig_update; int dscp_map; } ;


 int DCB_DSCP_ENABLE_MASK ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int,...) ;
 int ECORE_MSG_DCB ;
 int ECORE_SUCCESS ;
 int OSAL_MEMCPY (struct dcb_dscp_map*,int *,int) ;

__attribute__((used)) static enum _ecore_status_t
ecore_dcbx_set_dscp_params(struct ecore_hwfn *p_hwfn,
      struct dcb_dscp_map *p_dscp_map,
      struct ecore_dcbx_set *p_params)
{
 int entry, i, j;
 u32 val;

 OSAL_MEMCPY(p_dscp_map, &p_hwfn->p_dcbx_info->dscp_map,
      sizeof(*p_dscp_map));

 p_dscp_map->flags &= ~DCB_DSCP_ENABLE_MASK;
 if (p_params->dscp.enabled)
  p_dscp_map->flags |= DCB_DSCP_ENABLE_MASK;

 for (i = 0, entry = 0; i < 8; i++) {
  val = 0;
  for (j = 0; j < 8; j++, entry++)
   val |= (((u32)p_params->dscp.dscp_pri_map[entry]) <<
    (j * 4));

  p_dscp_map->dscp_pri_map[i] = val;
 }

 p_hwfn->p_dcbx_info->dscp_nig_update = 1;

 DP_VERBOSE(p_hwfn, ECORE_MSG_DCB, "flags = 0x%x\n", p_dscp_map->flags);
 DP_VERBOSE(p_hwfn, ECORE_MSG_DCB,
     "pri_map[] = 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x\n",
     p_dscp_map->dscp_pri_map[0], p_dscp_map->dscp_pri_map[1],
     p_dscp_map->dscp_pri_map[2], p_dscp_map->dscp_pri_map[3],
     p_dscp_map->dscp_pri_map[4], p_dscp_map->dscp_pri_map[5],
     p_dscp_map->dscp_pri_map[6], p_dscp_map->dscp_pri_map[7]);

 return ECORE_SUCCESS;
}
