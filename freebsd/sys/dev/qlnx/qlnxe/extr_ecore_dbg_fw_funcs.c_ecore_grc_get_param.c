
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * param_val; } ;
struct dbg_tools_data {TYPE_1__ grc; } ;
struct ecore_hwfn {struct dbg_tools_data dbg_info; } ;
typedef enum dbg_grc_params { ____Placeholder_dbg_grc_params } dbg_grc_params ;



__attribute__((used)) static u32 ecore_grc_get_param(struct ecore_hwfn *p_hwfn,
          enum dbg_grc_params grc_param)
{
 struct dbg_tools_data *dev_data = &p_hwfn->dbg_info;

 return dev_data->grc.param_val[grc_param];
}
