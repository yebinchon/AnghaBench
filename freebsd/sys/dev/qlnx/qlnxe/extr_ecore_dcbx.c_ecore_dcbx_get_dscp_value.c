
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct ecore_hwfn {TYPE_2__* p_dcbx_info; } ;
struct ecore_dcbx_dscp_params {size_t* dscp_pri_map; int enabled; } ;
struct TYPE_3__ {struct ecore_dcbx_dscp_params dscp; } ;
struct TYPE_4__ {TYPE_1__ get; } ;


 size_t ECORE_DCBX_DSCP_DISABLED ;
 size_t ECORE_DCBX_DSCP_SIZE ;

u8 ecore_dcbx_get_dscp_value(struct ecore_hwfn *p_hwfn, u8 pri)
{
 struct ecore_dcbx_dscp_params *dscp = &p_hwfn->p_dcbx_info->get.dscp;
 u8 i;

 if (!dscp->enabled)
  return ECORE_DCBX_DSCP_DISABLED;

 for (i = 0; i < ECORE_DCBX_DSCP_SIZE; i++)
  if (pri == dscp->dscp_pri_map[i])
   return i;

 return ECORE_DCBX_DSCP_DISABLED;
}
