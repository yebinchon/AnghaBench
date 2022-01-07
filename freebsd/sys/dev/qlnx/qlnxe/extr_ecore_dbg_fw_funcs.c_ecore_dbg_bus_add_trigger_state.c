
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct ecore_ptt {int dummy; } ;
struct dbg_bus_data {int next_trigger_state; int adding_filter; TYPE_1__* trigger_states; scalar_t__ next_constraint_id; int trigger_en; struct dbg_bus_block_data* blocks; } ;
struct dbg_tools_data {struct dbg_bus_data bus; } ;
struct ecore_hwfn {struct dbg_tools_data dbg_info; } ;
struct dbg_bus_block_data {int data; } ;
typedef enum dbg_status { ____Placeholder_dbg_status } dbg_status ;
typedef enum block_id { ____Placeholder_block_id } block_id ;
struct TYPE_2__ {int data; } ;


 int BYTES_IN_DWORD ;
 int DBG_BUS_BLOCK_DATA_ENABLE_MASK ;
 int DBG_BUS_BLOCK_DATA_RIGHT_SHIFT ;
 int DBG_BUS_TRIGGER_STATE_DATA_BLOCK_SHIFTED_ENABLE_MASK ;
 scalar_t__ DBG_REG_TRIGGER_STATE_MSG_LENGTH_0 ;
 scalar_t__ DBG_REG_TRIGGER_STATE_MSG_LENGTH_ENABLE_0 ;
 scalar_t__ DBG_REG_TRIGGER_STATE_SET_COUNT_0 ;
 scalar_t__ DBG_REG_TRIGGER_STATE_SET_NXT_STATE_0 ;
 int DBG_STATUS_BLOCK_NOT_ENABLED ;
 int DBG_STATUS_INVALID_ARGS ;
 int DBG_STATUS_OK ;
 int DBG_STATUS_TOO_MANY_TRIGGER_STATES ;
 int DBG_STATUS_TRIGGER_NOT_ENABLED ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int,int,int) ;
 int ECORE_MSG_DEBUG ;
 int GET_FIELD (int ,int ) ;
 int MAX_BLOCK_ID ;
 int MAX_TRIGGER_STATES ;
 int SET_FIELD (int ,int ,int ) ;
 int SHR (int ,int ,int ) ;
 int TRIGGER_SETS_PER_STATE ;
 int VALUES_PER_CYCLE ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__,int) ;

enum dbg_status ecore_dbg_bus_add_trigger_state(struct ecore_hwfn *p_hwfn,
            struct ecore_ptt *p_ptt,
            enum block_id block_id,
            u8 const_msg_len,
            u16 count_to_next)
{
 struct dbg_tools_data *dev_data = &p_hwfn->dbg_info;
 struct dbg_bus_data *bus = &dev_data->bus;
 struct dbg_bus_block_data *block_bus;
 u8 reg_offset;

 DP_VERBOSE(p_hwfn, ECORE_MSG_DEBUG, "dbg_bus_add_trigger_state: block = %d, const_msg_len = %d, count_to_next = %d\n", block_id, const_msg_len, count_to_next);

 block_bus = &bus->blocks[block_id];

 if (!bus->trigger_en)
  return DBG_STATUS_TRIGGER_NOT_ENABLED;
 if (bus->next_trigger_state == MAX_TRIGGER_STATES)
  return DBG_STATUS_TOO_MANY_TRIGGER_STATES;
 if (block_id >= MAX_BLOCK_ID)
  return DBG_STATUS_INVALID_ARGS;
 if (!GET_FIELD(block_bus->data, DBG_BUS_BLOCK_DATA_ENABLE_MASK))
  return DBG_STATUS_BLOCK_NOT_ENABLED;
 if (!count_to_next)
  return DBG_STATUS_INVALID_ARGS;

 bus->next_constraint_id = 0;
 bus->adding_filter = 0;


 SET_FIELD(bus->trigger_states[dev_data->bus.next_trigger_state].data, DBG_BUS_TRIGGER_STATE_DATA_BLOCK_SHIFTED_ENABLE_MASK, SHR(GET_FIELD(block_bus->data, DBG_BUS_BLOCK_DATA_ENABLE_MASK),
        VALUES_PER_CYCLE,
        GET_FIELD(block_bus->data, DBG_BUS_BLOCK_DATA_RIGHT_SHIFT)));


 reg_offset = bus->next_trigger_state * BYTES_IN_DWORD;
 ecore_wr(p_hwfn, p_ptt, DBG_REG_TRIGGER_STATE_MSG_LENGTH_ENABLE_0 + reg_offset, const_msg_len > 0 ? 1 : 0);
 if (const_msg_len > 0)
  ecore_wr(p_hwfn, p_ptt, DBG_REG_TRIGGER_STATE_MSG_LENGTH_0 + reg_offset, const_msg_len - 1);


 reg_offset = bus->next_trigger_state * TRIGGER_SETS_PER_STATE * BYTES_IN_DWORD;
 ecore_wr(p_hwfn, p_ptt, DBG_REG_TRIGGER_STATE_SET_COUNT_0 + reg_offset, count_to_next);




 ecore_wr(p_hwfn, p_ptt, DBG_REG_TRIGGER_STATE_SET_NXT_STATE_0 + reg_offset, MAX_TRIGGER_STATES);
 if (bus->next_trigger_state > 0) {
  reg_offset = (bus->next_trigger_state - 1) * TRIGGER_SETS_PER_STATE * BYTES_IN_DWORD;
  ecore_wr(p_hwfn, p_ptt, DBG_REG_TRIGGER_STATE_SET_NXT_STATE_0 + reg_offset, bus->next_trigger_state);
 }

 bus->next_trigger_state++;

 return DBG_STATUS_OK;
}
