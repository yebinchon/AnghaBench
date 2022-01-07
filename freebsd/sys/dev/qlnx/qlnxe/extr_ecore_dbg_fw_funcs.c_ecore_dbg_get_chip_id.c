
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dbg_tools_data {int chip_id; } ;
struct ecore_hwfn {struct dbg_tools_data dbg_info; } ;
typedef enum chip_ids { ____Placeholder_chip_ids } chip_ids ;



enum chip_ids ecore_dbg_get_chip_id(struct ecore_hwfn *p_hwfn)
{
 struct dbg_tools_data *dev_data = &p_hwfn->dbg_info;

 return (enum chip_ids)dev_data->chip_id;
}
