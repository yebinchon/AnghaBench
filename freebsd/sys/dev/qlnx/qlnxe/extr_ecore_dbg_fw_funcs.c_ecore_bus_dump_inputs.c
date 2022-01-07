
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct storm_defs {char letter; } ;
struct TYPE_3__ {struct dbg_bus_block_data* blocks; struct dbg_bus_storm_data* storms; } ;
struct dbg_tools_data {TYPE_1__ bus; } ;
struct ecore_hwfn {struct dbg_tools_data dbg_info; } ;
struct dbg_bus_storm_data {size_t mode; int hw_id; int enabled; } ;
struct dbg_bus_block_data {int data; int line_num; } ;
struct block_defs {char* name; } ;
struct TYPE_4__ {char* name; } ;


 int DBG_BUS_BLOCK_DATA_ENABLE_MASK ;
 int DBG_BUS_BLOCK_DATA_RIGHT_SHIFT ;
 int GET_FIELD (int ,int ) ;
 int MAX_BLOCK_ID ;
 size_t MAX_DBG_STORMS ;
 int ecore_dump_num_param (int*,int,char*,int ) ;
 int ecore_dump_section_hdr (int*,int,char*,int) ;
 int ecore_dump_str_param (int*,int,char*,char*) ;
 struct block_defs** s_block_defs ;
 struct storm_defs* s_storm_defs ;
 TYPE_2__* s_storm_mode_defs ;

__attribute__((used)) static u32 ecore_bus_dump_inputs(struct ecore_hwfn *p_hwfn,
         u32 *dump_buf,
         bool dump)
{
 struct dbg_tools_data *dev_data = &p_hwfn->dbg_info;
 char storm_name[8] = "?storm";
 u32 block_id, offset = 0;
 u8 storm_id;


 for (storm_id = 0; storm_id < MAX_DBG_STORMS; storm_id++) {
  struct dbg_bus_storm_data *storm_bus = &dev_data->bus.storms[storm_id];
  struct storm_defs *storm = &s_storm_defs[storm_id];

  if (!dev_data->bus.storms[storm_id].enabled)
   continue;


  storm_name[0] = storm->letter;
  offset += ecore_dump_section_hdr(dump_buf + offset, dump, "bus_input", 3);
  offset += ecore_dump_str_param(dump_buf + offset, dump, "name", storm_name);
  offset += ecore_dump_num_param(dump_buf + offset, dump, "id", storm_bus->hw_id);
  offset += ecore_dump_str_param(dump_buf + offset, dump, "mode", s_storm_mode_defs[storm_bus->mode].name);
 }


 for (block_id = 0; block_id < MAX_BLOCK_ID; block_id++) {
  struct dbg_bus_block_data *block_bus = &dev_data->bus.blocks[block_id];
  struct block_defs *block = s_block_defs[block_id];

  if (!GET_FIELD(block_bus->data, DBG_BUS_BLOCK_DATA_ENABLE_MASK))
   continue;


  offset += ecore_dump_section_hdr(dump_buf + offset, dump, "bus_input", 4);
  offset += ecore_dump_str_param(dump_buf + offset, dump, "name", block->name);
  offset += ecore_dump_num_param(dump_buf + offset, dump, "line", block_bus->line_num);
  offset += ecore_dump_num_param(dump_buf + offset, dump, "en", GET_FIELD(block_bus->data, DBG_BUS_BLOCK_DATA_ENABLE_MASK));
  offset += ecore_dump_num_param(dump_buf + offset, dump, "shr", GET_FIELD(block_bus->data, DBG_BUS_BLOCK_DATA_RIGHT_SHIFT));
 }

 return offset;
}
