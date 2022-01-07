
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ecore_ptt {int dummy; } ;
struct TYPE_2__ {int size; } ;
struct dbg_bus_data {int target; TYPE_1__ pci_buf; } ;
struct dbg_tools_data {struct dbg_bus_data bus; } ;
struct ecore_hwfn {struct dbg_tools_data dbg_info; } ;
typedef enum dbg_status { ____Placeholder_dbg_status } dbg_status ;


 int BYTES_TO_DWORDS (int ) ;


 int DBG_STATUS_OK ;
 int INT_BUF_SIZE_IN_DWORDS ;
 int OSAL_NULL ;
 scalar_t__ ecore_bus_dump_hdr (struct ecore_hwfn*,struct ecore_ptt*,int ,int) ;
 int ecore_dbg_dev_init (struct ecore_hwfn*,struct ecore_ptt*) ;
 scalar_t__ ecore_dump_last_section (int ,int ,int) ;

enum dbg_status ecore_dbg_bus_get_dump_buf_size(struct ecore_hwfn *p_hwfn,
            struct ecore_ptt *p_ptt,
            u32 *buf_size)
{
 struct dbg_tools_data *dev_data = &p_hwfn->dbg_info;
 struct dbg_bus_data *bus = &dev_data->bus;
 enum dbg_status status;

 status = ecore_dbg_dev_init(p_hwfn, p_ptt);

 *buf_size = 0;

 if (status != DBG_STATUS_OK)
  return status;


 *buf_size = (u32)ecore_bus_dump_hdr(p_hwfn, p_ptt, OSAL_NULL, 0);

 switch (bus->target) {
 case 129:
  *buf_size += INT_BUF_SIZE_IN_DWORDS; break;
 case 128:
  *buf_size += BYTES_TO_DWORDS(bus->pci_buf.size); break;
 default:
  break;
 }


 *buf_size += ecore_dump_last_section(OSAL_NULL, 0, 0);

 return DBG_STATUS_OK;
}
