
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_3__ {int * param_val; } ;
struct dbg_tools_data {size_t chip_id; TYPE_1__ grc; } ;
struct ecore_hwfn {struct dbg_tools_data dbg_info; } ;
struct TYPE_4__ {int * default_val; } ;


 size_t MAX_DBG_GRC_PARAMS ;
 TYPE_2__* s_grc_param_defs ;

void ecore_dbg_grc_set_params_default(struct ecore_hwfn *p_hwfn)
{
 struct dbg_tools_data *dev_data = &p_hwfn->dbg_info;
 u32 i;

 for (i = 0; i < MAX_DBG_GRC_PARAMS; i++)
  dev_data->grc.param_val[i] = s_grc_param_defs[i].default_val[dev_data->chip_id];
}
