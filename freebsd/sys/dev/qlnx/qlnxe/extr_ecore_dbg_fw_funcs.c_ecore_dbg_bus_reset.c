
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ecore_ptt {int dummy; } ;
struct TYPE_4__ {int one_shot_en; int hw_dwords; int grc_input_en; int unify_inputs; int num_enabled_blocks; TYPE_1__* blocks; int state; int target; } ;
struct dbg_tools_data {TYPE_2__ bus; } ;
struct ecore_hwfn {struct dbg_tools_data dbg_info; } ;
typedef enum dbg_status { ____Placeholder_dbg_status } dbg_status ;
struct TYPE_3__ {int data; } ;


 size_t BLOCK_DBG ;
 int DBG_BUS_BLOCK_DATA_ENABLE_MASK ;
 int DBG_BUS_STATE_READY ;
 int DBG_BUS_TARGET_ID_INT_BUF ;
 int DBG_REG_DBG_BLOCK_ON ;
 int DBG_REG_FULL_MODE ;
 int DBG_STATUS_DBG_BUS_IN_USE ;
 int DBG_STATUS_INVALID_ARGS ;
 int DBG_STATUS_OK ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int,int,int,int) ;
 int ECORE_MSG_DEBUG ;
 int OSAL_MEMSET (TYPE_2__*,int ,int) ;
 int SET_FIELD (int ,int ,int) ;
 int ecore_bus_disable_inputs (struct ecore_hwfn*,struct ecore_ptt*,int) ;
 int ecore_bus_reset_dbg_block (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_dbg_dev_init (struct ecore_hwfn*,struct ecore_ptt*) ;
 scalar_t__ ecore_rd (struct ecore_hwfn*,struct ecore_ptt*,int ) ;
 int ecore_update_blocks_reset_state (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,int ,int) ;

enum dbg_status ecore_dbg_bus_reset(struct ecore_hwfn *p_hwfn,
         struct ecore_ptt *p_ptt,
         bool one_shot_en,
         u8 force_hw_dwords,
         bool unify_inputs,
         bool grc_input_en)
{
 struct dbg_tools_data *dev_data = &p_hwfn->dbg_info;
 enum dbg_status status;

 status = ecore_dbg_dev_init(p_hwfn, p_ptt);
 if (status != DBG_STATUS_OK)
  return status;

 DP_VERBOSE(p_hwfn, ECORE_MSG_DEBUG, "dbg_bus_reset: one_shot_en = %d, force_hw_dwords = %d, unify_inputs = %d, grc_input_en = %d\n", one_shot_en, force_hw_dwords, unify_inputs, grc_input_en);

 if (force_hw_dwords &&
  force_hw_dwords != 4 &&
  force_hw_dwords != 8)
  return DBG_STATUS_INVALID_ARGS;

 if (ecore_rd(p_hwfn, p_ptt, DBG_REG_DBG_BLOCK_ON))
  return DBG_STATUS_DBG_BUS_IN_USE;


 ecore_update_blocks_reset_state(p_hwfn, p_ptt);


 status = ecore_bus_disable_inputs(p_hwfn, p_ptt, 0);
 if (status != DBG_STATUS_OK)
  return status;


 ecore_bus_reset_dbg_block(p_hwfn, p_ptt);


 ecore_wr(p_hwfn, p_ptt, DBG_REG_FULL_MODE, one_shot_en ? 0 : 1);


 OSAL_MEMSET(&dev_data->bus, 0, sizeof(dev_data->bus));
 dev_data->bus.target = DBG_BUS_TARGET_ID_INT_BUF;
 dev_data->bus.state = DBG_BUS_STATE_READY;
 dev_data->bus.one_shot_en = one_shot_en;
 dev_data->bus.hw_dwords = force_hw_dwords;
 dev_data->bus.grc_input_en = grc_input_en;
 dev_data->bus.unify_inputs = unify_inputs;
 dev_data->bus.num_enabled_blocks = grc_input_en ? 1 : 0;


 if (grc_input_en)
  SET_FIELD(dev_data->bus.blocks[BLOCK_DBG].data, DBG_BUS_BLOCK_DATA_ENABLE_MASK, 0x1);

 return DBG_STATUS_OK;
}
