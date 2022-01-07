
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
struct ecore_ptt {int dummy; } ;
struct dbg_bus_data {int hw_dwords; scalar_t__ filter_en; scalar_t__ trigger_en; struct dbg_bus_block_data* blocks; scalar_t__ num_enabled_blocks; } ;
struct dbg_tools_data {struct dbg_bus_data bus; } ;
struct ecore_hwfn {struct dbg_tools_data dbg_info; } ;
struct dbg_bus_line {int data; } ;
struct dbg_bus_block_data {int data; } ;
typedef enum dbg_status { ____Placeholder_dbg_status } dbg_status ;
typedef enum dbg_bus_frame_modes { ____Placeholder_dbg_bus_frame_modes } dbg_bus_frame_modes ;
typedef enum block_id { ____Placeholder_block_id } block_id ;


 int DBG_BUS_BLOCK_DATA_ENABLE_MASK ;
 int DBG_BUS_FRAME_MODE_0HW_4ST ;
 int DBG_BUS_FRAME_MODE_4HW_0ST ;
 int DBG_BUS_FRAME_MODE_8HW_0ST ;
 int DBG_BUS_LINE_IS_256B ;
 int DBG_STATUS_NON_MATCHING_LINES ;
 int DBG_STATUS_NO_FILTER_TRIGGER_64B ;
 int DBG_STATUS_OK ;
 scalar_t__ GET_FIELD (int ,int ) ;
 size_t MAX_BLOCK_ID ;
 int ecore_bus_set_framing_mode (struct ecore_hwfn*,struct ecore_ptt*,int) ;
 struct dbg_bus_line* get_dbg_bus_line_desc (struct ecore_hwfn*,int) ;

__attribute__((used)) static enum dbg_status ecore_config_dbg_block_framing_mode(struct ecore_hwfn *p_hwfn,
             struct ecore_ptt *p_ptt)
{
 struct dbg_tools_data *dev_data = &p_hwfn->dbg_info;
 struct dbg_bus_data *bus = &dev_data->bus;
 enum dbg_bus_frame_modes dbg_framing_mode;
 u32 block_id;

 if (!bus->hw_dwords && bus->num_enabled_blocks) {
  struct dbg_bus_line *line_desc;
  u8 hw_dwords;




  for (block_id = 0; block_id < MAX_BLOCK_ID; block_id++) {
   struct dbg_bus_block_data *block_bus = &bus->blocks[block_id];

   if (!GET_FIELD(block_bus->data, DBG_BUS_BLOCK_DATA_ENABLE_MASK))
    continue;

   line_desc = get_dbg_bus_line_desc(p_hwfn, (enum block_id)block_id);
   hw_dwords = line_desc && GET_FIELD(line_desc->data, DBG_BUS_LINE_IS_256B) ? 8 : 4;

   if (bus->hw_dwords > 0 && bus->hw_dwords != hw_dwords)
    return DBG_STATUS_NON_MATCHING_LINES;




   if (hw_dwords == 8 && (bus->trigger_en || bus->filter_en))
    return DBG_STATUS_NO_FILTER_TRIGGER_64B;

   bus->hw_dwords = hw_dwords;
  }
 }

 switch (bus->hw_dwords) {
 case 0: dbg_framing_mode = DBG_BUS_FRAME_MODE_0HW_4ST; break;
 case 4: dbg_framing_mode = DBG_BUS_FRAME_MODE_4HW_0ST; break;
 case 8: dbg_framing_mode = DBG_BUS_FRAME_MODE_8HW_0ST; break;
 default: dbg_framing_mode = DBG_BUS_FRAME_MODE_0HW_4ST; break;
 }
 ecore_bus_set_framing_mode(p_hwfn, p_ptt, dbg_framing_mode);

 return DBG_STATUS_OK;
}
