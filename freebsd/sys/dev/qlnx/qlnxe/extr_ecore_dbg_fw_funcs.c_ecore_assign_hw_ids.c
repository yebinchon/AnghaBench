
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u32 ;
struct dbg_bus_data {size_t next_trigger_state; struct dbg_bus_block_data* blocks; TYPE_1__* trigger_states; scalar_t__ trigger_en; scalar_t__ unify_inputs; } ;
struct dbg_tools_data {struct dbg_bus_data bus; } ;
struct ecore_hwfn {struct dbg_tools_data dbg_info; } ;
struct dbg_bus_block_data {size_t hw_id; int data; } ;
struct TYPE_2__ {int data; } ;


 int DBG_BUS_BLOCK_DATA_ENABLE_MASK ;
 int DBG_BUS_BLOCK_DATA_RIGHT_SHIFT ;
 int DBG_BUS_TRIGGER_STATE_DATA_CONSTRAINT_DWORD_MASK ;
 int GET_FIELD (int ,int ) ;
 size_t MAX_BLOCK_ID ;
 int OSAL_MEMSET (size_t*,int ,size_t) ;
 size_t SHR (int,size_t,int) ;
 size_t VALUES_PER_CYCLE ;

__attribute__((used)) static void ecore_assign_hw_ids(struct ecore_hwfn *p_hwfn,
       u8 hw_ids[VALUES_PER_CYCLE])
{
 struct dbg_tools_data *dev_data = &p_hwfn->dbg_info;
 struct dbg_bus_data *bus = &dev_data->bus;
 bool hw_id_per_dword = 1;
 u8 val_id, state_id;
 u32 block_id;

 OSAL_MEMSET(hw_ids, 0, VALUES_PER_CYCLE);

 if (bus->unify_inputs)
  return;

 if (bus->trigger_en) {
  for (state_id = 0; state_id < bus->next_trigger_state && hw_id_per_dword; state_id++) {
   u8 num_dwords = 0;

   for (val_id = 0; val_id < VALUES_PER_CYCLE; val_id++)
    if (GET_FIELD(bus->trigger_states[state_id].data, DBG_BUS_TRIGGER_STATE_DATA_CONSTRAINT_DWORD_MASK) & (1 << val_id))
     num_dwords++;

   if (num_dwords > 1)
    hw_id_per_dword = 0;
  }
 }

 if (hw_id_per_dword) {


  for (val_id = 0; val_id < VALUES_PER_CYCLE; val_id++)
   hw_ids[val_id] = val_id;
 }
 else {
  u8 shifted_enable_mask, next_hw_id = 0;


  for (block_id = 0; block_id < MAX_BLOCK_ID; block_id++) {
   struct dbg_bus_block_data *block_bus = &bus->blocks[block_id];

   if (!GET_FIELD(block_bus->data, DBG_BUS_BLOCK_DATA_ENABLE_MASK))
    continue;

   block_bus->hw_id = next_hw_id++;
   if (!block_bus->hw_id)
    continue;

   shifted_enable_mask =
    SHR(GET_FIELD(block_bus->data, DBG_BUS_BLOCK_DATA_ENABLE_MASK),
     VALUES_PER_CYCLE,
     GET_FIELD(block_bus->data, DBG_BUS_BLOCK_DATA_RIGHT_SHIFT));

   for (val_id = 0; val_id < VALUES_PER_CYCLE; val_id++)
    if (shifted_enable_mask & (1 << val_id))
     hw_ids[val_id] = block_bus->hw_id;
  }
 }
}
