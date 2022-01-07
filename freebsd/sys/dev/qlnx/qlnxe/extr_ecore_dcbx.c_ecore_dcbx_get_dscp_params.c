
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ecore_hwfn {TYPE_1__* p_dcbx_info; } ;
struct ecore_dcbx_dscp_params {int* dscp_pri_map; int enabled; } ;
struct ecore_dcbx_get {struct ecore_dcbx_dscp_params dscp; } ;
struct dcb_dscp_map {int* dscp_pri_map; int flags; } ;
struct TYPE_2__ {struct dcb_dscp_map dscp_map; } ;


 int DCB_DSCP_ENABLE ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int,int) ;
 int ECORE_DCBX_DSCP_SIZE ;
 int ECORE_MSG_DCB ;
 int GET_MFW_FIELD (int ,int ) ;

__attribute__((used)) static void ecore_dcbx_get_dscp_params(struct ecore_hwfn *p_hwfn,
     struct ecore_dcbx_get *params)
{
 struct ecore_dcbx_dscp_params *p_dscp;
 struct dcb_dscp_map *p_dscp_map;
 int i, j, entry;
 u32 pri_map;

 p_dscp = &params->dscp;
 p_dscp_map = &p_hwfn->p_dcbx_info->dscp_map;
 p_dscp->enabled = GET_MFW_FIELD(p_dscp_map->flags, DCB_DSCP_ENABLE);




 for (i = 0, entry = 0; i < ECORE_DCBX_DSCP_SIZE / 8; i++) {
  pri_map = p_dscp_map->dscp_pri_map[i];
  DP_VERBOSE(p_hwfn, ECORE_MSG_DCB, "elem %d pri_map 0x%x\n",
      entry, pri_map);
  for (j = 0; j < ECORE_DCBX_DSCP_SIZE / 8; j++, entry++)
   p_dscp->dscp_pri_map[entry] = (u32)(pri_map >>
          (j * 4)) & 0xf;
 }
}
