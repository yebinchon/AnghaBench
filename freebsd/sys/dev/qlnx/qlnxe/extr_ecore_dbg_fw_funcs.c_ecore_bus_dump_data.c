
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct TYPE_2__ {int target; } ;
struct dbg_tools_data {TYPE_1__ bus; } ;
struct ecore_hwfn {struct dbg_tools_data dbg_info; } ;




 int ecore_bus_dump_int_buf (struct ecore_hwfn*,struct ecore_ptt*,int *,int) ;
 int ecore_bus_dump_pci_buf (struct ecore_hwfn*,struct ecore_ptt*,int *,int) ;

__attribute__((used)) static u32 ecore_bus_dump_data(struct ecore_hwfn *p_hwfn,
          struct ecore_ptt *p_ptt,
          u32 *dump_buf,
          bool dump)
{
 struct dbg_tools_data *dev_data = &p_hwfn->dbg_info;

 switch (dev_data->bus.target) {
 case 129:
  return ecore_bus_dump_int_buf(p_hwfn, p_ptt, dump_buf, dump);
 case 128:
  return ecore_bus_dump_pci_buf(p_hwfn, p_ptt, dump_buf, dump);
 default:
  break;
 }

 return 0;
}
