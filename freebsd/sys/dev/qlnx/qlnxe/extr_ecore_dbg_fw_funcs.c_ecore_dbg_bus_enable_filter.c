
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ecore_ptt {int dummy; } ;
struct TYPE_4__ {scalar_t__ state; int filter_en; int adding_filter; scalar_t__ next_constraint_id; int unify_inputs; TYPE_1__* blocks; } ;
struct dbg_tools_data {TYPE_2__ bus; } ;
struct ecore_hwfn {struct dbg_tools_data dbg_info; } ;
typedef enum dbg_status { ____Placeholder_dbg_status } dbg_status ;
typedef enum block_id { ____Placeholder_block_id } block_id ;
struct TYPE_3__ {int data; } ;


 int DBG_BUS_BLOCK_DATA_ENABLE_MASK ;
 scalar_t__ DBG_BUS_STATE_READY ;
 int DBG_REG_FILTER_ID_NUM ;
 int DBG_REG_FILTER_MSG_LENGTH ;
 int DBG_REG_FILTER_MSG_LENGTH_ENABLE ;
 int DBG_STATUS_BLOCK_NOT_ENABLED ;
 int DBG_STATUS_DBG_BLOCK_NOT_RESET ;
 int DBG_STATUS_FILTER_ALREADY_ENABLED ;
 int DBG_STATUS_FILTER_BUG ;
 int DBG_STATUS_INVALID_ARGS ;
 int DBG_STATUS_OK ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int,int) ;
 int ECORE_MSG_DEBUG ;
 int GET_FIELD (int ,int ) ;
 int MAX_BLOCK_ID ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,int ,int) ;

enum dbg_status ecore_dbg_bus_enable_filter(struct ecore_hwfn *p_hwfn,
           struct ecore_ptt *p_ptt,
           enum block_id block_id,
           u8 const_msg_len)
{
 struct dbg_tools_data *dev_data = &p_hwfn->dbg_info;

 DP_VERBOSE(p_hwfn, ECORE_MSG_DEBUG, "dbg_bus_enable_filter: block = %d, const_msg_len = %d\n", block_id, const_msg_len);

 if (dev_data->bus.state != DBG_BUS_STATE_READY)
  return DBG_STATUS_DBG_BLOCK_NOT_RESET;
 if (dev_data->bus.filter_en)
  return DBG_STATUS_FILTER_ALREADY_ENABLED;
 if (block_id >= MAX_BLOCK_ID)
  return DBG_STATUS_INVALID_ARGS;
 if (!GET_FIELD(dev_data->bus.blocks[block_id].data, DBG_BUS_BLOCK_DATA_ENABLE_MASK))
  return DBG_STATUS_BLOCK_NOT_ENABLED;
 if (!dev_data->bus.unify_inputs)
  return DBG_STATUS_FILTER_BUG;

 dev_data->bus.filter_en = 1;
 dev_data->bus.next_constraint_id = 0;
 dev_data->bus.adding_filter = 1;


 ecore_wr(p_hwfn, p_ptt, DBG_REG_FILTER_ID_NUM, 0);
 ecore_wr(p_hwfn, p_ptt, DBG_REG_FILTER_MSG_LENGTH_ENABLE, const_msg_len > 0 ? 1 : 0);
 if (const_msg_len > 0)
  ecore_wr(p_hwfn, p_ptt, DBG_REG_FILTER_MSG_LENGTH, const_msg_len - 1);

 return DBG_STATUS_OK;
}
