
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct TYPE_2__ {struct dbg_bus_block_data* blocks; scalar_t__ num_enabled_blocks; } ;
struct dbg_tools_data {TYPE_1__ bus; } ;
struct ecore_hwfn {struct dbg_tools_data dbg_info; } ;
struct dbg_bus_block_data {int data; } ;


 int DBG_BUS_BLOCK_DATA_ENABLE_MASK ;
 int DBG_BUS_BLOCK_DATA_RIGHT_SHIFT ;
 int GET_FIELD (int ,int ) ;
 size_t MAX_BLOCK_ID ;
 int SHR (int,int ,int) ;
 int VALUES_PER_CYCLE ;

__attribute__((used)) static bool ecore_is_overlapping_enable_mask(struct ecore_hwfn *p_hwfn,
           u8 enable_mask,
           u8 right_shift)
{
 struct dbg_tools_data *dev_data = &p_hwfn->dbg_info;
 u8 curr_shifted_enable_mask, shifted_enable_mask;
 u32 block_id;

 shifted_enable_mask = SHR(enable_mask, VALUES_PER_CYCLE, right_shift);

 if (dev_data->bus.num_enabled_blocks) {
  for (block_id = 0; block_id < MAX_BLOCK_ID; block_id++) {
   struct dbg_bus_block_data *block_bus = &dev_data->bus.blocks[block_id];

   if (!GET_FIELD(block_bus->data, DBG_BUS_BLOCK_DATA_ENABLE_MASK))
    continue;

   curr_shifted_enable_mask =
    SHR(GET_FIELD(block_bus->data, DBG_BUS_BLOCK_DATA_ENABLE_MASK),
     VALUES_PER_CYCLE,
     GET_FIELD(block_bus->data, DBG_BUS_BLOCK_DATA_RIGHT_SHIFT));
   if (shifted_enable_mask & curr_shifted_enable_mask)
    return 1;
  }
 }

 return 0;
}
